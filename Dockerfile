FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json" ] .
RUN yarn install --production
COPY . .
EXPOSE 5000
CMD ["node", "src/index.js"]
