* each key value pair is an entry
* a map is a group of key value pairs and each key value pair is called an entry 
* so map is considered as a collection of entry objects
* without existing map object there is no chance of existing entry object
* so entry interface is defined inside map inteface
```
    interface map {


        interface entry{
            Object getKey();
            Object getValue();
            Object setValue();
        }
    }



```
