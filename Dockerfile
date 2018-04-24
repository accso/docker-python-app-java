FROM accso/docker-python-app
LABEL maintainer "marcus.rickert@accso.de"

COPY ./assets/jessie-backport.list /etc/apt/sources.list.d
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
       -t jessie-backports openjdk-8-jre-headless ca-certificates-java && \
    LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get clean
