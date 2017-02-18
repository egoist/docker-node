FROM ubuntu:xenial
MAINTAINER EGOIST <0x142857@gmail.com>

RUN echo '\
deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse\
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse\
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse\
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse\
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse\
' > /etc/apt/sources.list

RUN apt-get clean

RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash

# install common softwares
RUN apt-get install -y vim \
  git-core \
  nodejs

# install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
