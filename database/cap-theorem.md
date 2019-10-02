> ## CAP Theorem

- CAP theorem stands for consistency, Availability, Partition
- You can achieve only two things at a time. All three can't be achieved
    - P is fixed which in the no sql database
        - In nosql you can only have CP or AP
    - P is not available in sql database
        - so you can only have CA in RDBMS
- Depending on your application you have to choose the two things that you want
- For example in social networking webistes
    - we can go for AP as the consistency is not much important because if you view a Post after some time its not a big issue
- For Banking system
    - we need to have consistency as data needs to be correct

- CA : single site cluster therefore all nodes are always in contact
    - MySQL
- CP : some data may not be accessible but the rest is still consistent and accurate
    - MongoDB, HBase, Redis
- AP : system is still available under partitioning but some of the data returned may be inaccurate
    - Couchbase, Cassandra, Dynamo DB




> ## Consistency

- This means that no matter how when I read the data then the data should be correct
- In case of cluster or replication the data is replicated into multiple server and this can take time. so if you go for consistency then same data must be replicated in each and every cluster instance
- RDBMS don't work good with P of CAP


> ## Partition Tolerant

- If in a cluster one machine goes down then also other machine should respond
- It might not be fully active or functional but it should try to behave as correct as possible
- Some data may not be accessible but other data is accessible
- Every no sql data base try to support the partition of CAP theorem
