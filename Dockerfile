FROM node
MAINTAINER Ng Yuk Man <ngyukman@gmail.com>

ENV KEYSTONEJS_VERSION 0.3.16

RUN npm install dotenv --global
RUN npm install keystone@$KEYSTONEJS_VERSION --global

EXPOSE 3000
