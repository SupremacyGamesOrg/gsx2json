FROM node:12.18-alpine
ENV NODE_ENV=production
ENV PORT=5000
WORKDIR /usr/src/app
COPY ["package.json", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 5000
CMD ["npm", "start"]
