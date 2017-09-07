#/bin/bash

docker swarm init --advertise-addr 192.168.99.121
docker network create --driver overlay --subnet=192.168.0.0/24 overlay-net

#docker volume create -d flocker --name=vol-cassandra1 -o size=1G
#docker volume create -d flocker --name=vol-cassandra2 -o size=1G
#docker volume create -d flocker --name=vol-cassandra3 -o size=1G

#docker-compose up -d
docker stack deploy --compose-file=docker-compose.yml iot