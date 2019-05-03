# docker-postgres
Configuración de Docker para contener motor de base de datos Postgres

## Build Contenedor
docker build -t sebaxtian/docker-postgres:1.0.0 .

## Run Contenedor
docker run --name docker-postgres --env-file $PWD/.env -v $PWD/data/pgdata:/var/lib/postgresql -p 5432:5432 -d sebaxtian/docker-postgres:1.0.0

## Restart Contenedor
docker restart docker-postgres

## Ver logs de Contenedor
docker logs docker-postgres

## Shell en Contenedor
docker exec -it docker-postgres bash

## Eliminar Contenedor
docker rm docker-postgres

## Eliminar Image de Contenedor
docker image rm sebaxtian/docker-postgres:1.0.0
