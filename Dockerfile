# bundle the admin webapp
FROM node:17.2.0-alpine3.14 AS admin_builder

LABEL org.opencontainers.image.source=https://github.com/superseriousbusiness/gotosocial-admin

RUN apk update && apk upgrade --no-cache
RUN apk add git

#RUN git clone https://github.com/superseriousbusiness/gotosocial-admin
WORKDIR /gotosocial-admin

COPY . .

RUN npm install
RUN node index.js
