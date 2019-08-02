FROM node:10.13-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY package.json .
COPY . .
EXPOSE 3000
RUN npm install
CMD ["npm", "start"]