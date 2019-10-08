* rdd stands for resilienet distributed dataset
* spark is built around RDD
* we create, transform, analyze, store RDD in spark program
* the dataset can be partioned and distributed across multiple nodes
    * if a spark cluster has 10 nodes then the dataset can be partioned and distribures across those 10 nodes
    * then we can work in parallel on these datasets

* RDD are immutable so it is called resilient i.e. it can't be changed
* we can change the RDD by running transformation on it and create a new RDD. Note the original RDD can't be changed
*  RDD can be cached and persisit 
