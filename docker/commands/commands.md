# docker ps -a  // to show all containers on the system
# docker ps   // shows currently running containers



# docker run hello-world
When you ran the command, Docker Engine:
* checked to see if you had the hello-world software image
* downloaded the image from the Docker Hub (more about the hub later)
* loaded the image into the container and “ran” it


# docker images  // list all the images present in the local system


# docker build -t docker-whale .   // this asks to build a image form the Dockerfile in the current directory as we have given here .


# docker rmi -f 7d9495d03763 // this commands the docker image form the local system


# docker version  // this tells the version of the docker

# docker --help  // for getting the help menu
