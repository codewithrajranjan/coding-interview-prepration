## Zig zag traversal of Binary Tree










## Method 1 : using hashmap 

- create a hashmap which will take the tree level as key and array list as its value
- do inorder traversal of the tree and based on the level these nodes are encountered. Put them in the suitable position
- now when the traversal is completed then based on the level is even or odd take the decision of printing the arraylist from front or from back

- Note : This algo will help us to solve the problem but it will take extra space for storing data in hashmap and then array list

