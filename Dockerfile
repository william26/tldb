FROM postgres:latest

RUN apt-get clean
RUN apt-get purge

COPY . /fixtures
COPY ./setup.sh /docker-entrypoint-initdb.d

RUN chmod +x /docker-entrypoint-initdb.d/*
