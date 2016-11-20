#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER $POSTGRES_USER;
    CREATE DATABASE $POSTGRES_NAME;
    GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_NAME TO $POSTGRES_USER;

    CREATE TABLE titi (
     did    integer PRIMARY KEY DEFAULT nextval('serial'),
     name   varchar(40) NOT NULL CHECK (name <> '')
    );
EOSQL