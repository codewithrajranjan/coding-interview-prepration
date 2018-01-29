```java

    // creating a queue
    Queue<Integer> q = new LinkedList<Integer>();

    // remove 
    q.remove(); // retrieves and removes the first element

    // peek
    q.peek(); // retrieves the first element. If queue is empty then returns null

```


## What is the underlying concept of following statement

```java

    Queue<Integer> q = new LinkedList<Integer>();

```

when we declare the above line then we are trying to say that create a queue using linked list. The linked list can have so many function but only expose those function which are needed by the queue. This also means that only the properties and method related to queue will be applied