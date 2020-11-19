FROM node:alpine3.12

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

RUN npm install

COPY . /app

EXPOSE 4200
CMD [ 'npm', 'start' ]