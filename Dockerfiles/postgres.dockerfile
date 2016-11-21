FROM library/postgres

MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"

ADD Dockerfiles/init.sql /docker-entrypoint-initdb.d/
ADD Dockerfiles/init-db.sh /docker-entrypoint-initdb.d/