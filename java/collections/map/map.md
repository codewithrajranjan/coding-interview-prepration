* Map is not child interface of collections
* Map is an interface
* when we want to represent groupObjects as key-value pairs then we should go for map 
* both key and value are objects
* duplicate key is not allowed
* value can be duplicate
* each key-value pair is called an entry hence map is considered as a collection of entry object
* collections related terminologies are not applicable in map
# map interface methods
```
    Object put(Object key,Object value);
```
* to add one key value pair to the map
* if the key is already present then old value will be replaced with new value and returns old value

* to add a group of key value pair
```
    void putAll(Map m);

```

* to retrive the value asssociated with the key
    Object get(key);
```
    Object remove(Object key);to remove an entry
```
boolean containsKey(Object key);
boolean containsValue(Object value);
boolean isEmpty();
int size();
void clear();
* note key can't be duplicates so the return type is Set because set don't contain duplicates
Set keySet(); // returns only values
* note values can contain duplicates so the returen type is collection
Collection values();
* to get entry set
Set entrySet();

* note the return type of keySet(),values(),entrySet() is of type collections or set so these are called the colleciton views of map



# hashmap is the first implementation class of map
