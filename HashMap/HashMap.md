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


```
