FROM postgres:latest

RUN apt-get clean
RUN apt-get purge

COPY . /fixtures
COPY ./init.sql /docker-entrypoint-initdb.d
COPY ./setup.sh /docker-entrypoint-initdb.d

RUN chmod +x /docker-entrypoint-initdb.d/*
