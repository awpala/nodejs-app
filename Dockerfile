FROM node:latest

WORKDIR /app

# check dependencies changes first before running `npm install` -- if no change, then this avoids unnecessary re-install via `npm install`
COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["node", "server.js"]
