#!/bin/bash

printf "\n[Fetching latest ezPAARSE docker-compose.yml]\n"
mkdir ezpaarse
test -f ezpaarse/config.local.json || echo '{}' > ezpaarse/config.local.json
wget https://raw.githubusercontent.com/ezpaarse-project/ezpaarse/master/docker-compose.yml -O ezpaarse/docker-compose.yml

printf "\n[Cloning ezMESURE]\n"
git clone https://github.com/ezpaarse-project/ezmesure ezmesure

printf "\n[Pulling docker images]\n"
docker-compose -f ezpaarse/docker-compose.yml pull
docker-compose -f ezmesure/docker-compose.yml pull

printf "\n[Updating ezPAARSE resources]\n"
docker-compose -f ezpaarse/docker-compose.yml run --rm --no-deps ezpaarse make platforms-update middlewares-update resources-update exclusions-update

cd ezmesure

printf "\n[Initializing ezmesure.local.env.sh]\n"
bash ./tools/init_env.sh
source ezmesure.env.sh

printf "\n[Configuring Shibboleth]\n"
make config

printf "\n[Building ezMESURE]\n"
docker-compose build

printf "\n[Chowning elasticsearch directory]\n"
docker-compose run --rm elastic chown -R elasticsearch /usr/share/elasticsearch/

printf "\n[Initializing instances.yml]\n"
bash ./tools/init_es_instances.sh

printf "\n[Generating Elasticsearch certificates]\n"
docker-compose -f certs/create-certs.yml run --rm create_certs
unzip -o ./certs/bundle.zip -d ./elasticsearch/config/certificates/
unzip -o ./certs/bundle.zip -d ./kibana/config/certificates/

printf "\nInstallation completed"
printf "\nPlease add your SSL certificates for ezMESURE (server.pem and server.key) in ./ezmesure/rp/apache2/ssl/ (you may need sudo privileges)"