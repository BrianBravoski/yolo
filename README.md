## Requirements
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


## Runnning the application with the Playbooks

- 
