#!/bin/bash

APP=$1

# No arguments
if [ "$#" -eq 0 ]; then
  printf "Usage: ./update.sh <application> [ressources]\n"
  exit 1
fi

update_ezpaarse () {
  printf "[Update ezPAARSE]\n"

  printf "[Stopping ezPAARSE]\n"
  docker-compose -f ezpaarse/docker-compose.yml stop ezpaarse

  printf "[Downloading ezPAARSE update]\n"
  wget https://raw.githubusercontent.com/ezpaarse-project/ezpaarse/master/docker-compose.yml -O ezpaarse/docker-compose.yml

  printf "[Launching ezPAARSE]\n"
  docker-compose -f ezpaarse/docker-compose.yml up -d

  exit 0
}

update_ressources () {
  ressources=$1
  working_materials=(
    "exclusions"
    "middlewares"
    "platforms"
    "resources"
  )

  if [[ ! " ${working_materials[@]} " =~ " ${ressources} " ]]; then
    printf "$ressources is not available\n"
    printf "Working materials available :\n"
    for var in "${working_materials[@]}"
    do
      printf "  - ${var}\n"
    done
    exit 3
  fi

  if [ ! -d "./ezpaarse/$ressources" ]; then
    printf "$ressources folder not found\n"
    exit 2
  fi

  printf "[Downloading ezPAARSE $ressources update]\n"
  docker-compose -f ezpaarse/docker-compose.yml run ezpaarse bash -c "make $ressources-update"

  printf "[Restarting ezPAARSE]\n"
  docker-compose -f ezpaarse/docker-compose.yml restart ezpaarse

  exit 0
}

# App is ezPAARSE
if [[ "$APP" == "ezpaarse" ]]; then

  if [ ! -d "./ezpaarse" ]; then
    printf "ezpaarse folder not found\n"
    exit 2
  fi

  # Ressources was specified
  if [ "$#" -eq 2 ]; then
    update_ressources $2
  fi

  update_ezpaarse
fi
