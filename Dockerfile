FROM node:alpine
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
COPY ./ ./
RUN npm run generate
EXPOSE 3000
CMD ["node", "./server.js"]