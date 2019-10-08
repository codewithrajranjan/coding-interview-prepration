* the RDD data that is generated from the input stream is called D-Streaming
* it means Discretized stream
* DStream represents continuous stream of data


# how DStream is produces
1 can be produced from the input of data sources like flume, twitter etc.
2 applying transformation on DStream



* new RDD are created at regular interval
* at the beginning of each interval a new batch is created
* if no data is recieved during the batch interval then also the RDD will be created but there will be no data in it
