#!/bin/bash
echo "INSERT HERE YOUR SCRIPT"
psql -U postgres --command "CREATE USER docker WITH PASSWORD 'docker';"
psql -U postgres --command "CREATE DATABASE docker;"
psql -U postgres --command "GRANT ALL PRIVILEGES ON DATABASE docker TO docker;"