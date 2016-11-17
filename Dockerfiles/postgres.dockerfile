# Version 0.0.2

FROM postgres:9.6

MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"

ENV DB_NAME database
ENV DB_USER admin
ENV DB_PASS password

ADD Dockerfiles/setup-database.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/setup-database.sh
RUN /bin/bash /docker-entrypoint-initdb.d/setup-database.sh