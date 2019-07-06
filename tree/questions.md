## Top view of a tree

- Note when we view a tree from top then only the top most left and top most right nodes are visible. so just print the top left nodes and top right nodes.
- Print all nodes at distance k from a given node
- copy a linked list with random pointers
    - in this one try to insert the copt linked list in between of the the original linked list
    - original->next->arbiraty = original->arbitarty->nextoriginal->arbitarty->next



## Maximum Path Sum in a Binary Tree (VVI)

- https://www.geeksforgeeks.org/find-maximum-path-sum-in-a-binary-tree/

- the concept here is that when we are going from some root to find the next path then four things can happen
  
1. root + leftTree is max    : this will increase the path which is coming from top
2. root + rightTree is max   : this will increase the path coming from the top
3. root is maximumm          : this will stop the path coming from top
4. root + leftTree + rightTree is maximum   : this will stop the path coming from top and start a new path which will start from current node to its left and right subtree


- This most important concept here is that when we will maintain a global variable that will store the max path value at any point and when the recursion at at particular node gets completed then we will return only the max value of 1 or 2 or 3 and not of 4 (even if 4 is max) . this is becuse if the current subtree is maximum then later on some path from above and that of the subtree can become maximum


For example


            1
          /   \
        2      6000
     /    \         
  5000     5000     


- here if we see the node 2  then the max path will be from 5000 + 2 + 5000 but we will return 5002 and not 10002 
- because when the node 1 comes into picture then 5000 + 2 + 1 + 6000 will be maximum  so we will return 5002 and not the 10002