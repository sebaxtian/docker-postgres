#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER someuser WITH CREATEDB PASSWORD 'somepassword';
    CREATE DATABASE "somedb";
    GRANT ALL PRIVILEGES ON DATABASE "somedb" TO someuser;
EOSQL
