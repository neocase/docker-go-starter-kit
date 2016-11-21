FROM library/postgres

MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"

ADD Dockerfiles/init-db.sh /docker-entrypoint-initdb.d/

EXPOSE 5432