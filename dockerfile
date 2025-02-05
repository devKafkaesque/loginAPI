# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory to the root (so we can control where things land)
WORKDIR /src

# Copy package files to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the local src folder to /src in the container (make sure this points to your local src directory)
COPY ./src /src

# Expose the port your app listens on
EXPOSE 3000

# Run the app using the entry file located in /src
CMD ["node", "index.js"]
