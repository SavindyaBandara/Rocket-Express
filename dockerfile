# Use the official Node.js image from Docker Hub
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /src/app

# Install dependencies
COPY package*.json .

RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]
