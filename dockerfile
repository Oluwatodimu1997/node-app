# Use the Node.js base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json from the node-app directory
COPY node-app/package.json ./

# Install dependencies
RUN npm install

# Copy the application code from the node-app directory
COPY node-app ./

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]