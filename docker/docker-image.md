> ## Docker Image

- An image is a filesystem and parameters to use at runtime. It doesn’t have state and never changes.
- Docker image is a collection of all the files that make up the software application
- Each change that is made to the original image is stored in a separate layer

> ## docker pull -a <image-name>

- when we use the -a flag then all the variants of that image is downloaded
- Here from variants we understand all the tags of that image is downloaded



> ## Docker commit command

> ## Docker pull command

- used to pull an image from the docker registry
- docker pull <image-name>:<tag-name>
    - if no tag name has been given then the image with latest tag will be downloaded

> ## docker images

- This is used to list all the docker images in the system


> ## Removing an image
docker rmi  <IMAGE ID>


> ## docker push

- this is used to publish the docker image to the docker registry

> ## Ways to build docker images

- docker commit <container-id> <new-image-name>
- using Dockerfile














