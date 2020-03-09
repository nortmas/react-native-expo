FROM node:13.8.0-alpine

RUN npm install expo-cli --global

WORKDIR /home/node

ADD startup.sh /startup.sh

#https://github.com/nodejs/docker-node/issues/740
USER node

ENTRYPOINT ["/startup.sh"]