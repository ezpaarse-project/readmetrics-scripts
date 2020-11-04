#!/bin/bash

source ezmesure/ezmesure.env.sh
printf "\n[Clearing ezPAARSE containers]\n"
docker-compose -f ezpaarse/docker-compose.yml down
printf "\n[Clearing ezMESURE containers]\n"
docker-compose -f ezmesure/docker-compose.yml down
