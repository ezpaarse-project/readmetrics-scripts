#!/bin/bash

source ezmesure/ezmesure.env.sh
printf "\n[Launching ezPAARSE]\n"
docker-compose -f ezpaarse/docker-compose.yml up -d
printf "\n[Launching ezMESURE]\n"
docker-compose -f ezmesure/docker-compose.yml up -d
