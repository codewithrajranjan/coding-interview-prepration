## Depth First Traversal

### In-order Traversal

* visit the left tree
* visit the root node
* visit the right tree


* After writing full in order traversal the root is printed in the middle

#### Uses of In-order traversal

* inorder traversal of binary search tree gives nodes in non-decreasing order


### Pre-order Traversal

* visit root node 
* visit left tree
* visit right tree


* After writing full pre order traversal the root will come at the leftmost

#### Uses of preorder

* preorder traversal is used to create a copy of the tree
* used to get prefix expression on of an expression tree


### Post-order Traversal

* visit left tree
* visit right tree
* visit root node

* After writing full post order traversal the root will come at last or the right most


#### Uses of post order traversal

* used to delete a tree
* used to get the postfix expression of an expression tree

## Breadth First 

### Level order traversal
* printing each level one by one for the tree


### Vertical Traversal

* This is used to print the tree in vertical order. Multiple vertical lines are drawn and numbers are printed in that order.
* We use a hash map which stores the value of x in hashmap as keys and the value of x at root node is zero and for every left tree traversal x is reduced by 1 and for every right tree traversal it is increased by 1.

