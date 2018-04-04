#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE sip_pru;
    \c sip_pru;
    \i /tmp/structure.sql
EOSQL
