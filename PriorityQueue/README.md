## Priority Queue

- This is a queue
- Priority queue does not follow the principle of first in first out
- You can insert the elements in random order but based on the logic of comparator the value will be returned
- This behaviour of returning minimum elements can be changed by using a comparator
- Priority queue can be best used for creating max heap and min heap
- elements in the priority queue are in natural order or by the comparator provided during priority queue creation
 - natural order example means that when we insert integer then smallest number will be removed first
 - natural order example means when we insert string then lowest lexographic string will be returned

- Note : one thing important to note here is if we insert c, c++ ,java, python in the priority queue then if we do 
 - first remove : output will be c
 - second remove : output will be c++
 - third remove : output will be java
 - fourth remove will be python

- but if we print the priority queue then the same order will not be maintainer
- if you want to get the elements in order based on the natural or custom comparator then use the remove method



```java

    // priority queue of string with natural order
    PriorityQueue<String> namePriorityQueue = new PriorityQueue<>();


    // Create a Priority Queue of numbers
    PriorityQueue<Integer> numbers = new PriorityQueue<>();

```

- you can provide your own comparator to maintain the priority of elements
- for example you want the inserted string to be stored in the order of their string length

```java

    import java.util.Comparator;
    import java.util.PriorityQueue;

    // A custom comparator that compares two Strings by their length.
    Comparator<String> stringLengthComparator = new Comparator<String>() {
                @Override
                public int compare(String s1, String s2) {
                        return s1.length() - s2.length();
                }
    };

    // Create a Priority Queue with a custom Comparator
    PriorityQueue<String> namePriorityQueue = new PriorityQueue<>(stringLengthComparator);



```

- priority queue with comparator during initialization

```java
    
    // note 10 is the size of priority queue. you can remove it also
    PriorityQueue<String> pq = new PriorityQueue<>(10,new Comparator<String>(){
        @Override
        public int compare(String s1,String s2){
           return s1-s2;
        }
    })

```





### Questions based on priority queue 

- Implementing Dijkstra’s and Prim’s algorithms.
- Maximize array sum after K negations