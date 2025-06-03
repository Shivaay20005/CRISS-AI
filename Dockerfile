# Base image
FROM node:16

# Install Git
RUN apt-get update && apt-get install -y git

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy all source files
COPY . .

# Expose the app port
EXPOSE 3000

# Start the app using pm2
CMD ["npm", "start"]
