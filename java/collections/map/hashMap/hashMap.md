* underlying data strucrure is hash table
* insertion order is not preserved and it based on hash code of keys
* duplicate keys are not allowed but values can be duplicated
* hetrogenenous objects are allowed for both key key and value
* null is allowed for key but only once since duplicate keys are not allowed
* null is allowd for values
* HashMap implements serializable and clonable interfaces but not random Access interface
* HashMap is the best choice if our frequent operation is searching


# difference bwtween and hashTable

* HashMap
    * methods in hashMap is not synchronized
    * multiple threads are allowed to operate
    * waiting time is not therre as multuiple threads can work simultaneously so good performance
    * null allowed is allowed for either key or value
* HashTable
    * methods are synchronized
    * only one thread is allowed to operate
    * not good performance
    * null type is not allowed for either key or value
