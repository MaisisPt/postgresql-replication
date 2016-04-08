#!/bin/bash

docker build --rm -t="dw/postgresql-base" 1-base
docker build --rm -t="dw/postgresql-replication" 2-replication
docker build --rm -t="dw/postgresql-slave" 3-slave
docker build --rm -t="dw/postgresql-master" 4-master

docker-compose stop
docker-compose build
docker-compose up
