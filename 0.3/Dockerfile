FROM node

MAINTAINER Ng Yuk Man <ngyukman@gmail.com>

ENV KEYSTONEJS_VERSION 0.3.17

ENV NODE_MODULE_INSTALLATION_PATH /usr/src/modules
ENV NODE_PATH $NODE_MODULE_INSTALLATION_PATH/node_modules

RUN mkdir -p $NODE_MODULE_INSTALLATION_PATH
WORKDIR $NODE_MODULE_INSTALLATION_PATH

# FIX on npm3 https://github.com/npm/npm/issues/9863
RUN cd $(npm root -g)/npm \
 && npm install fs-extra \
 && sed -i -e s/graceful-fs/fs-extra/ -e s/fs\.rename/fs\.move/ ./lib/utils/rename.js

RUN npm install dotenv@1.2.0
RUN npm install keystone@$KEYSTONEJS_VERSION

WORKDIR /usr/src/app

EXPOSE 3000

CMD [ "node", "keystone.js" ]
