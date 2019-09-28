* A container is a running instance of an image.


# listing all running container
docker ps -a 



# stoppin all containers
docker stop $(docker ps -a -q)

# Removing all containers
docker rm $(docker ps -a -q)
