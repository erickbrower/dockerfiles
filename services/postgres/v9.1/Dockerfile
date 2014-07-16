FROM erickbrower/base

RUN apt-get -qq update && apt-get install -y postgresql postgresql-9.1-postgis

RUN cp /opt/configs/postgres/v9.1/pg_hba.conf /etc/postgresql/9.1/main
RUN cp /opt/configs/postgres/v9.1/postgresql.conf /etc/postgresql/9.1/main

RUN chmod og-rwx /var/lib/postgresql/9.1/main/server.key && chown postgres /var/lib/postgresql/9.1/main/server.key

USER postgres

EXPOSE 5432

CMD ["/usr/lib/postgresql/9.1/bin/postgres", "-D", "/var/lib/postgresql/9.1/main", "-c", "config_file=/etc/postgresql/9.1/main/postgresql.conf", "-c", "listen_addresses=*"]
