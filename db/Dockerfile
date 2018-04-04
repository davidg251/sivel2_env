FROM postgres

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales

RUN sed -i -e 's/# es_CO.UTF-8 UTF-8/es_CO.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=es_CO.UTF-8 && \
    apt-get install -y wget && \
    wget -O /tmp/structure.sql https://raw.githubusercontent.com/pasosdeJesus/sip/master/test/dummy/db/structure.sql

COPY ./create-structure.sh /docker-entrypoint-initdb.d/
ENV LANG es_CO.UTF-8
