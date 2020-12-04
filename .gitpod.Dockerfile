FROM ubuntu:20.04
MAINTAINER ngshya

RUN echo "root:root" | chpasswd
ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt dist-upgrade -y
RUN apt -y install htop \
 micro \
 git \
 python3-pip \
 wget
RUN yes | pip3 install --upgrade pip