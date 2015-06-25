FROM debian:wheezy

MAINTAINER Claude Khedhiri <claude@khedhiri.com>

# Update system
RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nano curl wget vim git gcc g++ python-software-properties

RUN apt-get install -y nginx php5-fpm php5-cli

# Timezone
RUN echo "Europe/Paris" | tee /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

EXPOSE 80 443