FROM node:16

#Create app directory
WORKDIR /app

COPY . .

#Install app dependencis
RUN npm install

#Use port 3001
EXPOSE 3000

CMD [ "node", "index.js"]