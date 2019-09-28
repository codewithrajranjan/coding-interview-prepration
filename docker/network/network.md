* Docker includes support for networking containers through the use of network drivers.
* By default, Docker provides two network drivers for you, the bridge and the overlay drivers. 
* You can also write a network driver plugin so that you can create your own drivers but that is an advanced task.
* Every installation of the Docker Engine automatically includes three default networks. You can list them:
* if network is not provided then docker launces it in bridge network


#docker network disconnect bridge networktest
* You can remove a container from a network by disconnecting the container. To do this, you supply both the network name and the container name. You can also use the container id. In this example, though, the name is faster.

