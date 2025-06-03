# Use official Node.js LTS image
FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port (optional for Heroku)
EXPOSE 3000

# Start the bot
CMD ["node", "index.js"]
