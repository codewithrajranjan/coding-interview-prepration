## Lowest common ancestor in BST

It's easy to find the LCA in BST
- compare the current node with the two numbers if one is smaller and one is greater then the current node is LCA
- if both are greater move the current node to right tree
- if both are smaller move the current node to left tree


## Check if a tree is BST or not

Do a pre order traversal of the tree and check that the output is sorted in ascending order. If yes then the tree is sorted.