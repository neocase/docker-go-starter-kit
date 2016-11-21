# Version 0.0.2

FROM postgres:9.6

MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"

ENV POSTGRES_NAME neo_db
ENV POSTGRES_USER neo_user
ENV POSTGRES_PASS neo_password

ADD Dockerfiles/init-user-db.sh /docker-entrypoint-initdb.d/
