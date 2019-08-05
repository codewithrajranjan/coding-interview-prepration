> ## Segment Tree

- segment trees are used in cases when there are multiple range queries on array and modifications of elements of same array
- for example finding the sum of elements in the range L to R
- for example finding the minumum of all elements in an array from indices L to R

- A segment tree is bascially a binary tree used for storing the intervals or segments
- Each node in a segment tree represents an interval
- The root is considered the full segment which means array elements from startIndex to end Index
- then the array is divided into two parts and the left subtree and right sub tree is created
- once the segment tree is created then the structure can't be changed
- we can update the value of the nodes but the structure can't be changed

- segment tree is best used to find the sum of a range in an array



> ## Construction of segment tree

- leaf nodes are the elements of the array
- Each internal node represents the merging of it child nodes. 
  - the merging value will be different based on the question that is being asked
  - the range sum question we will put the sum of child nodes in the parent node
- As we are dividing the array into two equal parts i.e left and right so the segement tree will be a complete binary tree since every parent will have either two children or no children

- we will be using an array to represent the segment tree.


#### What will be the size of array for segment tree construction

- The first question arised is that what will be the size of the array used for creating an segment tree from an array of size n
- As at every next level, every node at current level is splitting into two nodes, hence the nodes at next level will be twice the nodes at current level
- 0th level will contain 2^0 that is,  1 node which is root node.
- 1st level will contain 2^1 nodes.
- 2nd level will contain 2^2 nodes.
- 3rd level will contain 2^3 nodes.
- last level will contain 2^height nodes.


```bash
    Therefore, Total number of nodes = 2^0 + 2^1 + 2^2 + …. + 2^height
    = 2^(height+1) – 1 { sum of a G.P.}
    We know,
    Height of a tree = log(n) to the base 2.
    where, n = size of the given array.

    Therefore, the total nodes = 2^((log n) +1) – 1.
    As we store every node of the tree in an array, therefore,

    the size of the segment array will be 2^((log n) +1) – 1.

    int[] segArr = new int[2^((log n) +1) – 1];
```





> ## update of element in segment tree

- update is done on single index
- form root check in which subtree it lies either left or right
- perform this recursive traversal until you find the element
- in backtracting update the nodes in the path





> ## finding the sum of query range

- every node has a range ( Node Range )
- every query has a range( Query Range )
- Now four things can happen
  - Query Range lies completely inside the node range
    - Go to both left child and right child
  - Query Range and Node Range intersect each other but they are not completely inside each other
    - Go to both left child and right child
  - Node Range is completely inside the Query Range
    - return the node value
  - Node Range and Query range don't intersect each other 
    - return 0






