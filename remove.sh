#!/bin/bash

sudo docker-compose -f srcs/docker-compose.yml down
sudo docker rmi -f $(sudo docker images -qa)
sudo docker rm -f $(sudo docker ps -qa)
sudo docker volume rm $(sudo docker volume ls -q)
sudo docker system prune -a --force
sudo rm -Rf ../data/mariadb
sudo rm -Rf ../data/wordpress
sudo rm -Rf ../data/portainer
sudo rm -Rf ../data/html
sudo mkdir ../data/mariadb
sudo mkdir ../data/wordpress
sudo mkdir ../data/portainer
sudo mkdir ../data/html