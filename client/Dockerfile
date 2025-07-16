#Define the base image
FROM node:16.17.1-alpine3.16

#create a directory for the app
RUN mkdir /client

# Set the working directory
WORKDIR /client

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# build the application
RUN npm run build

#start the application
RUN npm install -g serve

# Serve the application on port 3000
EXPOSE  3000

#Entry point to run the application
CMD ["serve", "-s", "build", "-l", "3000"]    