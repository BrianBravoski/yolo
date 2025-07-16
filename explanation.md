## Docker File Explanation

### Choice of Base Image

- Used `node:24-alpine3.21` as the main base image for both Dockerfile 

### Dockerfile directives

#### client

-`FROM node:24-alpine3.21` - is the base image for the image

- `RUN mkdir /client` - creates a directory for the client application

- `WORKDIR /client` - changes the working directory to the one created.

-`COPY package.json package-lock.json ./` - copies the file dependencies into the working directory of the image.

- `RUN npm install` - installs the project dependencies.

- `COPY . .` - copy project source code inside the docker image.

- `CMD ["npm", "start"]` - specifies the image entry point.


### backend

-`FROM node:24-alpine3.21` - is the base image for the image

- `RUN mkdir /backend` - creates a directory for the backend application

-`COPY package.json package-lock.json ./` - copies the file dependencies into the working directory of the image.

- `RUN npm install` - installs the project dependencies.

- `COPY . .` - copy project source code inside the docker image.

- `CMD ["node", "server.js"]` - starts the application.


## Images on docker hub
![Docker images on docker hub](docker_hub.png)