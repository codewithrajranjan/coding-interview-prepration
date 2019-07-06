Replica set is a very strong concept used in mongodb for redundancy and high availability. If you have created an application which is connected to mongodb. Suppose a single mongodb is being used so if the database is down then you application will stop providing data. 
This is a bad choice for production based system. You need to have high availability of mongodb database so for that case you deploy multiple instances of mongodb. In replica set each mongodb is connected to each other. 
In a replica set a single mongodb is a primary server and other are secondary server. When database call is done the data will be read from the replica set and primary will be responsible for giving the data.
Now say the primary mongodb server goes down then an election will be done among all the secondary server and the instance that wins the election will be made primary.
In this way high availability is achieved

Now the most important point that you need to understand is the data in all mongodb instances will be same so there will be exact copy of data in all the instances of mongodb which is present in a replica set


Now to create a replica set
* you need to enter into one mongodb instance and initialize it as a replica set. This instance will be treated as the primary replica set

