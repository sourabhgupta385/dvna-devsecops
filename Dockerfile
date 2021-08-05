# Damn Vulnerable NodeJS Application
# docker run --name dvna -p 9090:9090 -d appsecco/dvna:sqlite

FROM docker.io/node:carbon-slim

WORKDIR /app

COPY src package.json node_modules ./

RUN apt-get update && \
    apt-get install -y iputils-ping && \
    npm install -g nodemon

CMD ["npm", "start"]
