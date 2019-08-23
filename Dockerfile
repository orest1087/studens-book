FROM node:latest

MAINTAINER macnaer

ENV NODE_ENV=prodiction
ENV PORT=3000

COPY  . /var/www
WORKDIR /var/www

VOLUME [ "/var/www" ]

RUN npm install
RUN npm install client/

EXPOSE $PORT
# ENTRYPOINT [ "npm", "run", "dev" ]
