#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER lambertus;
	CREATE DATABASE lambertus;
	GRANT ALL PRIVILEGES ON DATABASE lambertus TO lambertus;
EOSQL
