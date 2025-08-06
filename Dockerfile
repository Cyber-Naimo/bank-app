FROM node:18-alpine

WORKDIR /app

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

    
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5050

CMD ["node", "server.js"]
