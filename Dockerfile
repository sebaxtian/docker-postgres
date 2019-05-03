# 
# FROM postgres:11-alpine
# 
# https://hub.docker.com/_/postgres
# 
# Configuración de Docker para contener motor de base de datos Postgres
#
FROM postgres:11-alpine

# Initialization scripts
COPY scripts/ /docker-entrypoint-initdb.d/

# Customize configuration
# COPY config/custom.conf /usr/local/share/postgresql/postgresql.conf

EXPOSE 5432
