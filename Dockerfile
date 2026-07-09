FROM node:13-alpine

RUN mkdir -p /usr/app

COPY ./app /usr/app/

WORKDIR /usr/app

RUN npm install

EXPOSE 3000

CMD ["node", "/usr/app/server.js"]
