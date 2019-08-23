FROM node:latest

MAINTAINER macnaer

ENV NODE_ENV=development
ENV PORT=3000

COPY  . /var/www
WORKDIR /var/www

VOLUME [ "/var/www" ]

RUN npm install
RUN client/ npm install

EXPOSE $PORT
ENTRYPOINT [ "npm", "run dev" ]
