* first download the image
* then run the image 
* go inside the image and do your changes that you want
* once the changes has been done then we need to commit the docker

docker commit -m "Added json gem" -a "Kate Smith"  0b2616b0e5a8 ouruser/sinatra:v2
* -m is for commit message
* -a is for the author
* we also need to provide the container id 
* and the name of the image 
* tag is given using :
