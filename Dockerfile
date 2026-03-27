FROM node:22-alpine
WORKDIR /tmp
COPY index.js index.html package.json ./
EXPOSE 3000
RUN apk update && apk add --no-cache bash openssl curl &&\
    npm install
CMD ["node", "index.js"]
