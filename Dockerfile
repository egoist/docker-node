FROM ubuntu:xenial
MAINTAINER EGOIST <0x142857@gmail.com>

RUN apt-get clean

RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash

# install common softwares
RUN apt-get install -y vim \
  git-core \
  nodejs

# install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
