> ## Database Locking

- when two threads are trying to update same resource then database locks prevents that from happening
- It will allow the first thread to update the data and then only the second thread will be allowed to update it
- when lock is applied to the database then other transaction or query can't update it
- Lock can be released by using the commit or rollback sql commands


> ## What happens if lock is not getting released for large amount of time

- Suppose session A has acquired a lock on the database and it has not been released for large amount of time
- In this case different database behave differently based on the implementation
    - DB2 and IBM will actually timed out after a certain amount of time and return an error
    - Oracle leave the session in locked state for idefinite amount of time


> ## Locking levels in database

Locks can be applied at different levels in database also known as lock granularity

- Database Level
    - Entire database is locked
    - only one database session can apply any updates to the database
    - Generally this is not applied
    - This is used when we are applying database upgrade

- File level locking
    - with file level lock entire database locked

- Table level locking
    - Entire table is locked
    - This is used we are making changes to the entire table like we are altering the table say removing a column or removing a column

- Page or block level locking

- Column level locking
    - only some columns within a given row is locked
    - This form of locking is not much used as it will require a lot of resources to enable and release the lock
    - Very less database support column level locking

- Row level locking
    - A row level lock applies to a row in the table. This is most commonly used lock in database


> ## How locks are applied in the database

- when you write your query statement then you need to provide the syntax for that
    - In MySQL we use the for update statement

    ```bash
        
        Select * from user where email="selftuts.gmail.com" for update;

    ```


> ## Can data be read when lock is applied

- It depends on the type of the lock
    - Read Exclusive lock : This means that other database can't even read the data from locked rows




> ## MySQL types of Locks

- Shared Lock : In Shared lock other transaction can read the records on which lock has been applied
- Exclusive Lock : In Exclusive other transaction can not read the records on which lock has been applied




> ## MongoDB locks

Starting form version 2.2
- MongoDB supported concurrent read operations
- when write operation is performed then exclusive lock is applied which means that no read operation can also be performed
- But single write operation at a time since lock is applied on entire database
- Here the locks are not on collection level but entire database is getting locked
- Write operation takes precedence over the read operation

From MongoDB version 3.0, locks are available at following granularity levels :

- Global (MongoD instance) – All databases in it are affected by the lock.
- Database – Only the Database on which lock is applied is affected.
- Collection – Only the Collection on which lock is applied is affected.
- Document – Only the Document on which lock is applied is affected.

- Locks for Global, Database and Collection are handled by MongoDB while Document level locking is left to Storage Engine.


> ## Types of Lock in MongoDB

- Shared : Read operation can be performed on the locked resource
- Exclusive : Read operation can't be performed on the locked resource
- Intent Shared : 
- Intent Exclusive
