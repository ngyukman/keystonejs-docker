FROM node

MAINTAINER Ng Yuk Man <ngyukman@gmail.com>

ENV KEYSTONEJS_VERSION 0.3.16
ENV NODE_PATH /usr/local/lib/node_modules

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install dotenv --global
RUN npm install keystone@$KEYSTONEJS_VERSION --global

EXPOSE 3000

CMD [ "node", "keystone.js" ]
