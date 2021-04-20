FROM node:latest

WORKDIR /usr/src/app

# check dependencies changes first before running `npm install` -- if no change, then this avoids unnecessary re-install via `npm install`
COPY package.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD ["node", "server.js"]
