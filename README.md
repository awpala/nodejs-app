# nodejs-app

## Quick Start Guide

### Getting Base Images from Docker Hub

[Docker Hub](https://hub.docker.com) provides the base images from which the containerized application can be built (e.g., `node`, `postgres`, `python`, `nginx`, etc.).

For example:
```
docker pull node:latest
```

To run an instance of the Node runtime in the interactive terminal (use `Ctrl+D` to exit):
```
docker run -it node
```
### Build The App Image Using the `Dockerfile`

To build an image of the simple server app from the source code of this repository via the `Dockerfile` (see `/Dockerfile`), run the following from the top level directory of this repository:
```
docker build .
```
(*Optional*) Add a tag `server-app` to the image that was created:
```
docker tag <image-id> server-app
```
### Start and Stop a Container from the App Image

Start a container named `instance` on `http://localhost:3001` from the image `server-app` (use flag `-d` to run in detached mode):
```
sudo docker run -d -p 3001:3000 --name instance server-app
```
The live app can now be viewed in the browser at `http://localhost:3001`.

To stop the `instance` container:
```
docker stop instance
```

## Reference Commands

### Images

Build an image from the top-level application directory (i.e., `.`) containing the `Dockerfile`:
```
docker build .
```
List all images:
```
docker images
```
Tag/label an image:
```
docker tag <image-id> <tag-name>
```
Remove an image:
```
docker rmi <image-id | tag-name>
```

### Containers

Start up a container from an image (use optional flag `-d` to run detached, i.e., to prevent transferring out of the terminal):
```
docker start [-d] -p <routed-port>:<exposed-port> <image-id>
```
List all processes/containers (omitting optional flag `-a` will only show currently running containers):
```
docker ps [-a]
```
Name/label a container:
```
docker --name <container-name> <container-id>
```
Remove a container:
```
docker rm <container-name | container-id>
```

### Miscellaneous

An image or container can be inspected for its metadata:
```
docker inspect <image-id | image-name | container-id | container-name>
```
