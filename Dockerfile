FROM node:16

# Create app directory
WORKDIR /usr/src/app2

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 9090
CMD [ "node", "server.js" ]