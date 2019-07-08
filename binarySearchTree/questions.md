> ## Question: Lowest common ancestor in BST

#### Solution 1
It's easy to find the LCA in BST
- compare the current node with the two numbers if one is smaller and one is greater then the current node is LCA
- if both are greater move the current node to right tree
- if both are smaller move the current node to left tree

--------------------------------------------------------------------------------------------------------------

> ## Question: Check if a tree is BST or not (VVI)

- Read Question from here https://www.geeksforgeeks.org/a-program-to-check-if-a-binary-tree-is-bst-or-not/

#### Solution 1
- tricky question must see the recuriosn solution
   - For each node, check if max value in left subtree is smaller than the node and min value in right subtree greater than the node.


- Do a in order traversal of the tree and store the node data in an arraylist
- if the array list is sorted and ascending then the given tree is BST 


-----------------------------------------------------------------------------------------------------------------

> ## Question: Construct BST from given preorder traversal

#### Solution 1 O(n^2)

- In preorder traersal the first node is the root node
- first construct the root node and then loop over the given preorder traversal and insert the nodes one by one

```java

package selftuts;

import java.util.LinkedList;
import java.util.Queue;

class Selftuts{

        public static void main(String[] args) {
                
                Tree t = new Tree();
                int[] preOrderTraversal = {10, 5, 1, 7, 40, 50};
                
                for(int i=0;i<preOrderTraversal.length;i++) {
                        t.insertNode(preOrderTraversal[i]);
                }
                t.levelOrderTraversal(t.root);
        }
}
class TreeNode {
        int data;
        TreeNode leftNode = null;
        TreeNode rightNode = null;
        public TreeNode(int data) {
                this.data = data;
        }
}

class Tree {
        TreeNode root = null;
        public Tree() {
                        
        }
        public void insertNode(int data) {
                if(this.root == null) {
                        // if root is null then creating the first node
                        root = new TreeNode(data);
                }else {
                        
                        // maintain a pointer that will find the exact location where to insert the new node
                        TreeNode ptr = this.root;
                        while(ptr!=null) {
                                if(data > ptr.data) {
                                        // this means we need to move right to the currentNode
                                        // but we also have to check if the the right node is null then we will 
                                        // insert the data
                                        if(ptr.rightNode==null) {
                                                ptr.rightNode = new TreeNode(data);
                                                // we are breaking since we have found the place where to insert the node
                                                // then there is no need of loop
                                                break;
                                        }else {
                                                ptr = ptr.rightNode;
                                        }

                                }else {
                                        // data will be less than the current Node
                                        // this means we need to move to the left of the current node
                                        // but we also need to check if the left node is null or not
                                        // if is is null then we will insert the node 
                                        // otherwise we will move the pointer
                                        if(ptr.leftNode == null) {
                                                ptr.leftNode = new TreeNode(data);
                                                // we are breaking because we have found the place where we need to insert
                                                // the node
                                                break;
                                        }else {
                                                ptr = ptr.leftNode;
                                        }
                                }
                        }
                }
        }
        public void levelOrderTraversal(TreeNode root) {
                
                // creating the queue that will hold the node of each level
                Queue<TreeNode> q = new LinkedList<TreeNode>();
                q.add(root);
                while(q.isEmpty()==false) {
                        TreeNode currentNode = q.remove();
                        System.out.print(currentNode.data+" ");
                        if(currentNode.leftNode!=null) {
                                q.add(currentNode.leftNode);
                        }
                        if(currentNode.rightNode!=null) {
                                q.add(currentNode.rightNode);
                        }
                }

        }
        
}

```

#### Solution 2 O(n^2)
- In preorder traversal the first node is the root node
- recursively constrct tree by taking the first node and then finding the first element that is greater than the current node
- now the left subtree will be from the rootNode + 1 to one index less than the first greater node
- right subtree will be from the first greater node to the last element
- this is done recursively
- complexity O(n^2)

#### Solution 3
- couldn't understand from geeks for geeks solution

#### Solution 4
- stack based solution
- couldn't understand form the geeks for geeks solution


----------------------------------------------------------------------------------------------------------------------------

> ## Question: Binary Tree to Binary Search Tree Conversion. Conversion must be done in such a way that the original structure of tree is maintained

#### Solution 1
- make and array and do any tree traversal and put the nodes value in the array
- sort the array
- do inorder traversal of binary tree and during backtracking in replace the node value with array value





--------------------------------------------------------------------------------------------------------------------------

