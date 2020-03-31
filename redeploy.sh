#!/bin/bash

echo -en 'Removing existing containers\n'
echo
echo
docker rm -f $(docker ps -aq)

echo
echo
echo -en 'DEPLOYING FRESH CONTAINER\n'
bash /root/chime/script/server

echo
echo
echo -en 'SCALE TO 30 CONTAINERS'
cd /root/chime/ && docker-compose scale app=30
