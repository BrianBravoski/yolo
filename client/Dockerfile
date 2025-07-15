#Define the base image
FROM node:24-alpine3.21

#create a directory for the app
RUN mkdir /client

# Set the working directory
WORKDIR /client

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application code
COPY . .


#Entry point to run the application
CMD ["npm", "start"]  