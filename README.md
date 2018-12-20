# ci_postgres_docker_image

This repository contains the Dockerfile to build the container we use in CI 
with postgres server and any postgres extensions we use.  This container
simply extends the official postgres docker container and installs the
extensions we need.
