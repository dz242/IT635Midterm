FROM mysql:5.7

COPY ./sql_init /docker-entrypoint-initdb.d


EXPOSE 3306