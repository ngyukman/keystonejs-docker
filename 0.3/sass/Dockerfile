FROM ngyukman/keystonejs:0.3

MAINTAINER Ng Yuk Man <ngyukman@gmail.com>

RUN npm install node-sass --global
RUN npm install node-sass-middleware --global

# Download the correct binding to make sass works
RUN node /usr/local/lib/node_modules/node-sass-middleware/node_modules/node-sass/scripts/install.js
