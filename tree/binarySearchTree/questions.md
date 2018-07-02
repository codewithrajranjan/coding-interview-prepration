## Lowest common ancestor in BST

It's easy to find the LCA in BST
- compare the current node with the two numbers if one is smaller and one is greater then the current node is LCA
- if both are greater move the current node to right tree
- if both are smaller move the current node to left tree


## Check if a tree is BST or not

- Do a in order traversal of the tree and store the node data in an arraylist
- if the array list is sorted and ascending then the given tree is BST 

## Construct BST from given preorder traversal

- method1
    - In preorder traersal the first node is the root node
    - first construct the root node and then loop over the given preorder traversal and insert the nodes one by one
    - complexity O(n^2)
- method2
    - In preorder traversal the first node is the root node
    - recursively constrct tree by taking the first node and then finding the first element that is greater than the current node
    - now the left subtree will be from the rootNode + 1 to one index less than the first greater node
    - right subtree will be from the first greater node to the last element
    - this is done recursively
    - complexity O(n^2)

- method3
    - couldn't understand from geeks for geeks solution

- method4
    - stack based solution
    - couldn't understand form the geeks for geeks solution


## Binary Tree to Binary Search Tree Conversion. Conversion must be done in such a way that the original structure of tree is maintained

- make and array and do any tree traversal and put the nodes value in the array
- sort the array
- do inorder traversal of binary tree and during backtracking in replace the node value with array value