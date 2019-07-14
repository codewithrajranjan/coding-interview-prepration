## what is binary search tree

- The left subtree of a node contains only nodes with keys lesser than the node’s key. Here one important thing to note is that not only the left node data should be less than the current Node but all the data of left subtree should be smaller

- the below tree is not a BST because each subtree has the left node less than the root node and right node greater than the root node. But the BST says that all the nodes in left subtree should be less but if you look 4 is greater than 3

                        3
                      /   \ 
                    2      5
                  /  \
                 1    4

- The right subtree of a node contains only nodes with keys greater than the node’s key. Here one important thing to note is that not only the right node data should be more than then current node but all the data of right subtree should be greater

- The left and right subtree each must also be a binary search tree.
