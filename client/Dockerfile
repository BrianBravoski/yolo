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

# # Build the application
# RUN npm run build

# Run the static server
RUN npm install -g serve

# Expose the port the app runs on
EXPOSE 3000

#Entry point to run the application
CMD ["serve", "-s", "build", "-l", "3000"]  