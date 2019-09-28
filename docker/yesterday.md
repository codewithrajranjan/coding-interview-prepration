docker run -d -i -t docker/whalesay /bin/bash
docker exec -it 00cdccae8b45 /bin/bash



apt-get -qq update
apt-get -qq -y install curl
docker commit fc6750c3de95 docker/whalesay:version1
