* if we want to loop over map then first we need to get the entrySet of the map 
* we know that the return typw of entrySet is Set so we need to use an iterator over that set

```
    Set s1 = map.entrySet();
    Iterator itr = s1.iterator();
    while(itr.hasNext()){
            Map.Entry m1= (Map.Entry)itr.next();
            // so here m1 is the each ebtry set
            // now we can apply the Entry mehtods on it  like getValue,getKey,setValue
    }
```
