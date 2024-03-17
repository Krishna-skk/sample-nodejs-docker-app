# Development stage
FROM mhart/alpine-node:12 as development

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]

# Test stage
FROM development as test

RUN npm run test

# Production stage
FROM mhart/alpine-node:12 as production

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
