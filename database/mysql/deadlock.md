> ## Understanding deadlock with an example

- Taking an example of money transfer from account A to account B
- If we write the business logic of any money transfer then it will include these operations
    - Deduct money from account A
    - Deposit money from account B
    - Deduct commission from Account A
- Now one important thing that needs to kept in mind is that money transfer is fully correct if all the above three operations are successfully done
- so we will perform these steps in a transaction
- so when A is transferring to B then 
    - lock will be applied on record of A for money deducting
    - lock will be applied on record of B for money credit
    - lock will be applied on record of A for commission deduct
- This will work fine



- Now take the case when A is transferring to B and B is transferring to A then in that case deadlock will appear
    - lock will be applied on A
    - lock will be applied on B
    - when A will try to deposit money in B account then it will see that lock has already been applied so it will wait for lock to open. Same scenario will be seen when B will try to deposit money in A account 
    - This lock will never get opened because the transaction will not complete as A will not be able to deposit money in B account as it will see a lock
