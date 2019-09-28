* When using client-side discovery, the client is responsible for determining the network locations of available service instances and load balancing requests across them.
* The client queries a service registry, which is a database of available service instances. 
* The client then uses a load-balancing algorithm to select one of the available service instances and makes a request.



# components 
* client 
* service registry
* multiple dynamic instances of services


# working
* The network location of a service instance is registered with the service registry when it starts up.
* It is removed from the service registry when the instance terminates.
* The service instance’s registration is typically refreshed periodically using a heartbeat mechanism.




Advantages 
* client side discovery makes less number of network hops

Disadvantages
* client is tightly coupled with the servie registry 
* some of the business logic code is there in 
* One significant drawback of this pattern is that it couples the client with the service registry. 
* You must implement client-side service discovery logic for each programming language and framework used by your service clients.

# examples
* Netflix OSS - client side service
* Netflix Eureka - service registry
* Netflix Ribbon is an IPC client that works with Eureka to load balance requests across the available service instances. 
