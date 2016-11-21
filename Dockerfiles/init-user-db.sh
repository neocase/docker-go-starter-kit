#!/bin/bash
set -e
sudo psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER neo_user WITH PASSWORD 'neo_password';
    CREATE DATABASE neo_db;
    GRANT ALL PRIVILEGES ON DATABASE neo_user TO neo_db;
EOSQL