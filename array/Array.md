## Array


```java
    // Initializing an array
    int[] array = new int[arraySize]; // one dimensional

    int[][] array = new int[rowSize][colSize] // two dimensional

    int[][][] array = new int[size][size][size]  // three dimensional

    // size or length of array
    arr.length

    // Printing an array 
    Arrays.toString(arr)

    // converting ArrayList or list to array
    list.toArray();



```



## Questions

### Left rotation of an array.

There are different ways in which this problem can be solved

- Extra space in which we create new array and we traverse array and calculate the final index of the current index
    - finalIndex = currentIndex - rotationSize
    - If the finalIndex is less than 0 then finalIndex = finalIndex + arraySize
    - and we place the element in new array at finalIndex location

- Rotate one by one
    - save the first element in temp variable 
    - rotate by one from the second element
    - put temp element at the last
    - repeat this for the number of rotations time
- Juggling Algorithm In place rotation where we don't use extra space.