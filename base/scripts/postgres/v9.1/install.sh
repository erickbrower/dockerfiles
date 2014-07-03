#!/bin/bash

apt-get update -qq 
apt-get install -y postgresql postgresql-9.1-postgis
cp /opt/configs/postgres/v9.1/pg_hba.conf /etc/postgresql/9.1/main
cp /opt/configs/postgres/v9.1/postgresql.conf /etc/postgresql/9.1/main
chmod og-rwx /var/lib/postgresql/9.1/main/server.key && chown postgres /var/lib/postgresql/9.1/main/server.key
