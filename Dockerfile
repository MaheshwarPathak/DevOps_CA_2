# Use official Node.js LTS base image
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package manifests and install dependencies first for better caching
COPY package*.json ./
RUN npm install --production

# Copy app source code
COPY . .

# Expose port used by the app
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
