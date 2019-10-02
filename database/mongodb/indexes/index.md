> ## What are indexing

- if there are no indexes in MongoDB then for every search query all the documents in the collection will be scanned. This is not a good approach
- so if we create an index in the collection then MongoDB will inspect less documents to find the result.
- Indexing decrease the search time in the database
- MongoDB defines indexes at the collection level
- MongoDB supports indexes on any field or sub field of the documents
- MongoDB uses B Tree data structures for making the indexes




> ## Default id index in MongDB

- MongoDB defines a default id index so that user can't insert two documents with same id
- This provides uniqueness of the documents
- But when you are using sharded clusters and you are not using id as the shard key then it is the responsibility of the application developer to ensure the uniqueness of the id 


> ## Index Names

- Every index should have a unique name
- If you don't provide the name of the index then MongoDB will provide a name of itself using the key name and the direction separated by underscore

```javascript
    
    // if this is the index

    { item : 1, quantity: -1 }

    // then name would be

    item_1_quantity_-1


```
- You can't rename an index once it has been created. You need to drop it and then you need to create it



> ## Type of index in MongoDB

- Single field index
    - Index is created on a single field of the document
    - The field can be a top level field or the sub document field e.g address.location
    - The field can be the sub document itself
- Compound field index
    - Index created on multiple fields
    - Fields can be any combination like
        - multiple top level fields
        - top level field + sub document field
        - multiple sub document field
    - Order of field while creating the index is important because the final returned document will sort the document in the field order
- Multi key index
    - If the key that you are trying to index is an array then MongoDB will automatically create indexing on the array for efficient searching
- Geospatial Index
    - This is used for efficient searching on geospatial coordinate data. 
    - It uses 2d indexes and 2dsphere index
- Text Index
    - used for searching for string content in the collection
    - Text indexes don't store the language specific words like a, an, the, or
- Hash



> ## Benefits of indexes

- It improves the efficiency of read operations




> ## Ascending of Descending Index

- Indexes can be created in ascending or descending order
- A value of 1 represents ascending order
- A value of -1 represents descending order



