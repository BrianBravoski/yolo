#  Microservice Application with Playbooks.

## Stage 1: Vagrant and ansible configuration

- Stage 1 showcases ansible's ability to configure the server and the application settings.
- Use of `Vagrant` to allow easier provisioning of a server with resources.

### Folder Structure

- Use of roles to help with ansible configuration.
    - packages_setup - is the first role which installs git, docker and all the required packages. It also pulls the code from github.
    - mongo_setup - pulls a mongo docker image and starts a container. It ensures data persistence on restarts.
    - backend_deployment - pulls the backend image from docker hub and builds and starts the container.
    - frontend_deployment - pulls the frontend image from dockerhub and buils and starts the container.

- use of `var` YAML files in each role for variables
- Use of `tags` to correctly label the tasks in playbooks.
 
## Requirements
- virtual box
- vagrant
- ansible
- docker
- access to the docker images posted on docker hub
- Mongodbor a Mongo Atlas database 
- node js


## Running the application without docker
- Clone the repo from github : `https://github.com/BrianBravoski/yolo`
- Navigate to the directory using `cd yolo`
- Navigate to the front end application `cd client`
- Install the node dependencies  using `npm install`
- Start the service using `npm start`
- Open another terminal
- Navigate to the backend directory using `cd backend`
- Set up the mongodb url correctly in the `server.js ` file
- Install the node dependencies using `npm install`
- Start the server using `node server.js`

## Running as a dockerized microservice application

### Steps

- Clone the repo from github : `https://github.com/BrianBravoski/yolo`
- Change the directory to the yolo directory using `cd yolo`
- Run the `docker compose up --build -d` command to build and start your application.



