FROM postgres:10.5

# tell ubuntu not to expect an interactive terminal so we don't get spammed with errors
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install wget

# install postgres plv8 extension
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update
RUN apt-get -y install postgresql-10-plv8

