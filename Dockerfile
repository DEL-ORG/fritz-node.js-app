# Use the base image
FROM node:18-slim

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . /app

# Install dependencies
RUN npm install

# Expose the specified port
ENV PORT 80
EXPOSE 80

# Command to run the app
CMD ["node", "server.js"]
