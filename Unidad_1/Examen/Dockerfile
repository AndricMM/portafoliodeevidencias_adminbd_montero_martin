FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=selva_viva

VOLUME [ "/var/lib/mysql" ]

COPY scripts/creartablas.sql /docker-entrypoint-initdb.d/
COPY scripts/datos_indices.sql /docker-entrypoint-initdb.d/


EXPOSE 3306


