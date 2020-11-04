#!/bin/bash

source ezmesure/ezmesure.env.sh
printf "\n[Stopping ezPAARSE]\n"
docker-compose -f ezpaarse/docker-compose.yml stop
printf "\n[Stopping ezMESURE]\n"
docker-compose -f ezmesure/docker-compose.yml stop
