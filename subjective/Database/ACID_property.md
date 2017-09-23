## ACID Property in DATABASE


    A transaction is a very small unit of a program and it may contain several lowlevel tasks. A transaction in a database system must maintain Atomicity, Consistency, Isolation, and Durability − commonly known as ACID properties − in order to ensure accuracy, completeness, and data integrity.

   - Atomicity: In a transaction involving two or more discrete pieces of information, either all of the pieces are committed or none are.

   - Consistency: A transaction either creates a new and valid state of data, or, if any failure occurs, returns all data to its state before the transaction was started.

   - Isolation: A transaction in process and not yet committed must remain isolated from any other transaction.

   - Durability: Committed data is saved by the system such that, even in the event of a failure and system restart, the data is available in its correct state.
