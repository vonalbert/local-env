ARG MYSQL_VERSION=latest
ARG PGSQL_VERSION=latest


FROM mysql:${MYSQL_VERSION} as mysql
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_ROOT_HOST=%
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
VOLUME [ "./volumes/mysql/${MYSQL_VERSION}:/var/lib/mysql" ]


FROM postgres:${PGSQL_VERSION} as postgres
ENV POSTGRES_PASSWORD=password
VOLUME [ "./volumes/postgres/${MYSQL_VERSION}:/var/lib/postgresql/data" ]
