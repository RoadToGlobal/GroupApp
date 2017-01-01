#!/bin/bash
if [[ -z $1 ]]; then
  sudo docker-compose -f docker-compose-development.yml up
elif [[ $1 == rebuild ]]; then
  sudo docker-compose -f docker-compose-development.yml down
  sudo docker-compose -f docker-compose-development.yml build
  sudo docker-compose -f docker-compose-development.yml up
elif [[ $1 == build ]]; then
  sudo docker-compose -f docker-compose-development.yml stop
  sudo docker-compose -f docker-compose-development.yml build
  sudo docker-compose -f docker-compose-development.yml up
else
  echo 'syntax error'
fi

