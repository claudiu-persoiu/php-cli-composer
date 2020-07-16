FROM ubuntu:19.10

WORKDIR /build

ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

RUN apt -y update
RUN apt -y install software-properties-common
RUN add-apt-repository -y ppa:ondrej/php
RUN apt -y update
RUN apt install -y git tzdata curl php7.2 php7.2-intl php7.2-mysql php7.2-xml php7.2-curl php7.2-gd php7.2-zip php7.2-soap php7.2-bcmath


RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer


