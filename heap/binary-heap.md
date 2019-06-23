## Binary Heap

- Binary heap is a binary tree with following properties
  - it is a complete tree. 
  - All levels are completely filled except possibly the last level. This is property of complete tree
  - last level has all the keys as left as possible. This is property of complete tree

- since it is a complete tree so the representation of binary heap is best represented using array.
  - if k index is root
  - then 2k is the left node and 2k+1 is the right node

- A binary heap is either min heap or max heap.
- In Binary Min Heap the root element must be the smallest of all the elements. The same property must be recursively true for all the nodes in binary tree
- In Binary Max heap the root element must be the greates of all the elements. The same property must be recursively true for all the nodes in binary tree




## Application

- Heap Sort: Heap Sort uses Binary Heap to sort an array in O(nLogn) time.
- Priority Queue: Priority queues can be efficiently implemented using Binary Heap 
- Graph Algorithms: The priority queues are especially used in Graph Algorithms like Dijkstra’s Shortest Path and Prim’s Minimum Spanning Tree.
- K’th Largest Element in an array.
- Sort an almost sorted array/
- Merge K Sorted Arrays.


## Operations on Min Heap:

-  getMini(): It returns the root element of Min Heap. Time Complexity of this operation is O(1).

- extractMin(): Removes the minimum element from MinHeap. Time Complexity of this Operation is O(Logn) as this operation needs to maintain the heap property (by calling heapify()) after removing root.

- decreaseKey(): Decreases value of key. The time complexity of this operation is O(Logn). If the decreases key value of a node is greater than the parent of the node, then we don’t need to do anything. Otherwise, we need to traverse up to fix the violated heap property.

- insert(): Inserting a new key takes O(Logn) time. We add a new key at the end of the tree. IF new key is greater than its parent, then we don’t need to do anything. Otherwise, we need to traverse up to fix the violated heap property.

- delete(): Deleting a key also takes O(Logn) time. We replace the key to be deleted with minum infinite by calling decreaseKey(). After decreaseKey(), the minus infinite value must reach root, so we call extractMin() to remove the key.

