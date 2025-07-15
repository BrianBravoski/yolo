# Base Image
FROM node:24-alpine3.21

# Create a directory for the app
RUN mkdir /backend

# Set the working directory
WORKDIR /backend

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

#start the application
CMD ["node", "server.js"]

