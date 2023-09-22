# Use the Node.js 18-slim base image
FROM node:18-slim

# Set an environment variable for the port
ENV PORT 80

# Expose port 80 (for documentation purposes)
EXPOSE 80

# Set the working directory in the container
WORKDIR /app

# Copy your application files to the container
COPY . /app

# Install any necessary dependencies
RUN npm install

# Command to run the Node.js application
CMD ["node", "server.js"]
