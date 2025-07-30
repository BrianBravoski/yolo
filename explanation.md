## Docker File Explanation

### Choice of Base image
- Used `node:24-alpine3.21` as the main base image for both Dockerfile 

### Dockerfile directives

#### client

-`FROM node:16.17.1-alpine3.16` - is the base image for the image

- `RUN mkdir /client` - creates a directory for the client application

- `WORKDIR /client` - changes the working directory to the one created.

-`COPY package.json package-lock.json ./` - copies the file dependencies into the working directory of the image.

-`RUN npm run build` - build the application 

- `RUN npm install` - installs the project dependencies.

- `COPY . .` - copy project source code inside the docker image.

- `CMD ["serve", "-s", "build", "-l", "3000"]` - specifies the image entry point.


### backend

-`FROM node:24-alpine3.21` - is the base image for the image

- `RUN mkdir /backend` - creates a directory for the backend application

-`COPY package.json package-lock.json ./` - copies the file dependencies into the working directory of the image.

- `RUN npm install` - installs the project dependencies.

- `COPY . .` - copy project source code inside the docker image.

- `CMD ["node", "server.js"]` - starts the application.


## Images on docker hub

![Docker images on docker hub](docker_hub.png)

- This the link to the [yolo_client](https://hub.docker.com/r/k3mboi/client) image in dockerhub.
- This the link to the [yolo_backend](https://hub.docker.com/r/k3mboi/backend) image in dockerhub.


## Running the 