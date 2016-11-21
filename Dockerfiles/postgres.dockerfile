FROM library/postgres

MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"

ENV POSTGRES_USER = docker
ENV POSTGRES_PASSWORD = docker
ENV POSTGRES_DB = docker

ADD Dockerfiles/init-db.sh /docker-entrypoint-initdb.d/

EXPOSE 5432