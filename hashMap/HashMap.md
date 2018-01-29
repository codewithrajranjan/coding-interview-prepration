## HashMap in Java

* A HashMap contains values based on the key.
* It contains only unique elements.
* It may have one null key and multiple null values.
* It maintains no order.

```java

    import java.util.*

    // General way to create a hash map
    HashMap<T,T> hm = new HashMap<T,T>();

    // Creating a Hash map where key and value both are integer

    HashMap<Integer,Integer> hm = new HashMap<Integer,Integer>();

    // check if it contains key
    hm.containsKey(key); // returns boolean true/false

    // adding element to hash map
    hm.put(key,value);

    // get value by key
    hm.get(key);

    // size of hashMap
    hm.size() // return size of hash in integer value

    // getting values of key
    hm.keySet() // this will return a list containing the value of keys

    // getting value of hashmap values returns a list
    hm.entrySet()

    // iteration of hashmap
    Map<String, Object> map = ...;
    // iterating through keyset
    for (String key : map.keySet()) {
        // ...
    }

    // iteration over values
    for (Object value : map.values()) {
    // ...
    }
    // iteration over both key and value
    for (Map.Entry<String, Object> entry : map.entrySet()) {
    String key = entry.getKey();
    Object value = entry.getValue();
    // ...
    }
    


```
## Difference between HashMap and HashTable

- HashTable is synchronized but not HashMap. This means that HashMap is better for non-threaded application
- HashTable doesn't allow null keys and values but HashMap allows one null key and any number of null values
- HashMap is generally preferred over the HashTable if thread synchronization is not needed