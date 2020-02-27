FROM node:13.8.0

RUN npm install expo-cli --global

RUN mkdir /project
WORKDIR /project

ADD startup.sh /startup.sh

USER node

ENTRYPOINT ["/startup.sh"]