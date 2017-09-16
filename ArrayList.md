## ArrayList in Java

```java
    // Generic way
    ArrayList<T> al = new ArrayList<T>();

    // we are considering a Integer Array List
    ArrayList<Integer> al = new ArrayList<Integer>();

    // adding data to array list
    al.add(10);

    // removing all element from array list
    al.clear()

    // total element in array list
    al.size();

    // get element at particular index
    al.get(index);


    // Iterating over array list
    for(int i=0;i<al.size();i++){
        al.get(i);
    }

    // Iterating over an array list
    for(Integer i : al){
        System.out.println(i);
    }
    


```
