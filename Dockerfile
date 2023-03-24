FROM node:18-alpine
WORKDIR /docker-fapp
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]