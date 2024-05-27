FROM node:lts-alpine3.20  # Base image with Node.js 16 and Alpine Linux

WORKDIR /app

COPY package*.json ./  # Copy package.json and package-lock.json
RUN npm install  # Install dependencies during build

COPY . .  # Copy your entire project code

EXPOSE 3000  # Expose the port where your React app runs (usually 3000)

CMD [ "npm", "start" ]  # Start command to run your React app
