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
echo -en 'SCALE TO 10 CONTAINERS'
cd /root/chime/ && docker-compose scale app=10
