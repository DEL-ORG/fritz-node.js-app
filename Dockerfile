# Use the official Node.js 18 image with a slim base
FROM node:18-slim

# Set the PORT environment variable to 80
ENV PORT=80

# Expose port 80
EXPOSE 80

# Set the working directory to /app
WORKDIR /app

# Copy your package.json and package-lock.json files to the container
COPY package*.json ./

# Install Node.js application dependencies
RUN npm install

# Copy your Node.js application files to the container
COPY . .

# Define the command to run when the container starts
CMD ["node", "server.js"]
