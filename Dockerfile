FROM node:lts-alpine3.20

WORKDIR /app

COPY package*.json ./
RUN npm install  # Install dependencies during build

COPY . . 

EXPOSE 3000

CMD [ "npm", "start" ]  # Start command to run your React app
