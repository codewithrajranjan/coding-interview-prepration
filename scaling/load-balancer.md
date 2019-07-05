- when we do horizontal scaling then we need to put a load balancer infront of all ther server because we want some entity to send the request in an optimized way to all the server that are running
- one algorithm to handle request is through round robin approach but it may happen that the most compute intensive request always goes to the same server and this may cause crash of that particular server
- another problem that round robin faces is supposet the login request of user goes to server 1 and then session is creted on that particular server. Now the next request goes to server2 which will only be server if the user is authenticated. since the session information is on server1 and the load balacer sends the request to server 2 so this will fail

- load balancer can be put in between
  - request recieved by clien and the webserver. this will route the client request to web server
  - another load balancer can be put in between webserver and the database to handle the query effectively


## Software based load balancer

- ELB ( elastic load balancer )
- HA Proxy ( High availabliey Proxy )
- LVS

## Hardware based load balancer

- Barracuda
- Cisco
- Citrix
- F5




## Handling of static files and businesss logic

- whenever we have some static files like image, css, javascript then we can host them on some separate server say server1
- whenever the load balancer gets a request to server some static file then it will call the server1 and other server that are executing the business logic will function independently




## RAID

- RAID0 : two hardive where data is written in chunks alternatively on two drives
- RAID1 : two hard drive which writes data simultaneously to these two hard drives
