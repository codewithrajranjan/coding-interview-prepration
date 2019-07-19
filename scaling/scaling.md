## Vertical Scaling 





## Horizontal scaling





> ## Clones

- clones means different instances of same application which are running behind the load balancer
- First request of user can be served by server1, second request by server8, third request by server 5
- Goldenn rule of scalibility
  - every server/clone contains the exact same codebase
  - server don't store user related data like session, profile pictures on local disc or memory

- sessions needs to be stored in some centralized application and all other microservice needs to store it
  - it can be external database or external persistant cache like redis server



> ## Database




> ## Cache

- Approach 1 : Cached Database query
  - Whenever you do a query to your database, you store the result dataset in cache. A hashed version of your query is the cache key. 
  - The next time you run the query, you first check if it is already in the cache.
  - The main issue is the expiration

- Approach 2 : Object Caching


> ## Asynchronism













> ## Performannce vs Scalibility






> ## Latency vs Throughput





> ## Availibility vs Consistency
