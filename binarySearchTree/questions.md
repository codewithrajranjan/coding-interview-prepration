> ## Question: Lowest common ancestor in BST

#### Solution 1
It's easy to find the LCA in BST
- compare the current node with the two numbers if one is smaller and one is greater then the current node is LCA
- if both are greater move the current node to right tree
- if both are smaller move the current node to left tree

--------------------------------------------------------------------------------------------------------------

> ## Question: Check if a tree is BST or not (VVI)

- Read Question from here https://www.geeksforgeeks.org/a-program-to-check-if-a-binary-tree-is-bst-or-not/

#### Solution 1 ( Based on the property of BST ) but this solution is wrong

- A tree is a BST 
  - if the root data is bigger than than all the element in the left subtree
  - if the root data is smaller than all the element present in the right subtree

- the first solution that comes into mind is we need to check for every node is left node is smaller and right node is smaller then it is a BST. 
- but this approach is wrong because we are check only the immediate children.
- BUT BST says that all the nodes in the left subtree should be smaller and not only the immediate left child node. All the nodes in the right subtree should be greater than the current Node and not only the immediate right child node.


- Get the Middle of the array and make it root.
- Recursively do same for left half and right half.
  - Get the middle of left half and make it left child of the root created in step 1.
  - Get the middle of right half and make it right child of the root created in step 1.

```java

    int isBST(struct node* node)  {  
      if (node == NULL)  
	return 1;  
	  
      /* false if left is > than node */
      if (node->left != NULL && node->left->data > node->data)  
	return 0;  
	  
      /* false if right is < than node */
      if (node->right != NULL && node->right->data < node->data)  
	return 0;  
	
      /* false if, recursively, the left or right is not a BST */
      if (!isBST(node->left) || !isBST(node->right))  
	return 0;  
	  
      /* passing all that, it's a BST */
      return 1;  
    } 


```


#### Solution 2 ( Correct but not efficient )

- for each node find the max element in left subtree and check if it is less than the current Node
- for each node find the min element in right subtree and checkk if it is more than the current Node

```java
	int isBST(struct node* node)  {  
	  if (node == NULL)  
	    return(true);  
	      
	  /* false if the max of the left is > than us */
	  if (node->left!=NULL && maxValue(node->left) > node->data)  
	    return(false);  
	      
	  /* false if the min of the right is <= than us */
	  if (node->right!=NULL && minValue(node->right) < node->data)  
	    return(false);  
	    
	  /* false if, recursively, the left or right is not a BST */
	  if (!isBST(node->left) || !isBST(node->right))  
	    return(false);  
	      
	  /* passing all that, it's a BST */
	  return(true);  
	}  


```


#### Solution 3 : Quite tricky

- The trick is to write a utility helper function isBSTUtil(node, int min, int max) that traverses down the tree keeping track of the narrowing min and max allowed values as it goes, looking at each node only once. The initial values for min and max should be INT_MIN and INT_MAX — they narrow from there.


#### Solution 4 : Using In-Order Traversal

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


```java

package selftuts;

import java.util.LinkedList;
import java.util.Queue;

class Selftuts{

	public static void main(String[] args) {
		
		Tree t = new Tree();
		int[] preOrderTraversal = {10, 5, 1, 7, 40, 50};
		t.constructTree(preOrderTraversal, 0, preOrderTraversal.length-1);
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
	
	public void constructTree(int[] preorderTraversal,int startIndex,int endIndex) {
		
		this.root = this.constructTreeUtil(preorderTraversal, startIndex, endIndex);
		
		
	}
	public TreeNode constructTreeUtil(int[] preorderTraversal,int startIndex,int endIndex) {
		// the idea is the the preorder traversal will have the first element at as the root node
		// so we will take the first element of the preorder traversal and make the node
		// then we need to find the array part that forms the left subtree and right subtree
		// we will recursively call the constructTree method
		
		// conditions that will stop the recursion
		// startIndex is greater than the end index
		if(startIndex>endIndex) {
			return null;
		}
		

		// create the root element
		int data = preorderTraversal[startIndex];
		TreeNode root = new TreeNode(data);
		
		// now we need to know the index from where we will form the right subtree and left subtree
		// for that we need to find the first increasing element
		int firstIncreasingElementIndex = this.firstIncreasingElementIndex(data, preorderTraversal, startIndex+1, endIndex);
		
		if(firstIncreasingElementIndex == -1) {
			// this means there is no right subtree
			root.leftNode = this.constructTreeUtil(preorderTraversal, startIndex+1, endIndex);
			root.rightNode = null;
		}else {
			root.rightNode = this.constructTreeUtil(preorderTraversal,firstIncreasingElementIndex,endIndex);
			root.leftNode = this.constructTreeUtil(preorderTraversal, startIndex+1, firstIncreasingElementIndex-1);
		}

		return root;


		
	}
	public int firstIncreasingElementIndex(int currentElement,int[] arr,int startIndex,int endIndex) {
		
		for(int i=startIndex;i<=endIndex;i++) {
			if(arr[i]>currentElement) {
				return i;
			}
		}
		// if no increasing element is found then it means that not right subtree can be formed
		return -1;
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




> ## Convert Sorted Array to Balanced BST

-  A tree is said to be blanced if
  - height of left subtree and height of right subtree of root differ by 1
  - left subtree is balanced
  - right subtree is blalanced

- when ever we need to create to create a BST which is optimised then we take the middle elmeent of storted array and create the node. 
- then we create the left subtree of that node by using the array element from startIndex to middleElementIndex-1
- and we create the right subtree of that node by using the array element from middleElementIndex+1 to endIndex


```java

package selftuts;

import java.util.LinkedList;
import java.util.Queue;

class Selftuts{

	public static void main(String[] args) {
		
		int[] arr = {1, 2, 3};

		Tree t = new Tree();
		t.constructBalancedBST(arr);
		
		t.levelOrderTraversal(t.bstRoot);
		
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

	TreeNode bstRoot = null;
	
	public void constructBalancedBST(int[] arr) {

		this.bstRoot = this.constructBlancedBSTUtil(arr, 0, arr.length-1);

	}
	public TreeNode constructBlancedBSTUtil(int[] arr,int startIndex,int endIndex) {
		
		// recursion exit case will be
		if(startIndex>endIndex) {
			return null;
		}
		// the idea is to find the middle element in between startIndex and endIndex
		// numberOfElement can be found using (endIndex-startIndex) + 1
		// if the number of element is odd then middleElement = (endIndex-startIndex)/2
		// if the number of element is even then middleElement = ((endIndex-startIndex)/2)+1
		// we will create the current node using the middel element and 
		// the leftNode and rightNode will be created based on passing the array recursiveley by updating 
		// the startIndex and endIndex
		
		int totalElement = (endIndex-startIndex)+ 1;
		int middleElementIndex;

		if(totalElement%2==0) {
			// this means that there are even number of elements
			middleElementIndex = startIndex + ((endIndex-startIndex)/2)+1;
		}else {
			// the number of element are odd
			middleElementIndex = startIndex + ((endIndex-startIndex)/2);
		}
		
		// create the node
		TreeNode root = new TreeNode(arr[middleElementIndex]);
		
		root.leftNode = this.constructBlancedBSTUtil(arr, startIndex, middleElementIndex-1);
		root.rightNode = this.constructBlancedBSTUtil(arr, middleElementIndex+1, endIndex);
		
		return root;
		
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


> ## There is a binary tree and you have to convert that binary tree to BST and the structure of that binary tree needs to be maintained

- we know that if we do inorder traversal of a BST then the elements will be presented in a sorted manner. 
- The inorder traversal of BST will give the numbers in Ascending order


- now we will take all the elments of the tree and create a sorted array
- now we will do the inorder traversal of the tree and during backtracking we will take the element from array and replcae the tree nodes values. this will help us to maintain the structure of the tree




> ## Convert sorted Linked list to BST

- https://www.geeksforgeeks.org/sorted-linked-list-to-balanced-bst/

#### Solution 1

- Get the Middle of the linked list and make it root.
- Recursively do same for the left half and right half.
  - Get the middle of the left half and make it left child of the root created in step 1.
  - Get the middle of right half and make it the right child of the root created in step 1.


```java


package selftuts;

import java.util.LinkedList;
import java.util.Queue;

class Selftuts{

	public static void main(String[] args) {
		
		// first creating the linked list
		Node head;

		// linked list will be 1->2->3->4->5->6->7
		Node one = new Node(1);
		Node two = new Node(2);
		Node three = new Node(3);
		Node four = new Node(4);
		Node five = new Node(5);
		Node six = new Node(6);
		Node seven = new Node(7);
		one.next = two;
		two.next = three;
		three.next = four;
		four.next = five;
		five.next = six;
		six.next = seven;
		
		head = one;
		

		Tree t = new Tree();
		t.construtBST(head);
		t.levelOrderTraversal(t.bstRoot);
		
	}
}

class Node {
	int data;
	Node next;
	public Node(int data) {
		this.data = data;
		this.next = null;
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

	TreeNode bstRoot = null;

	public void construtBST(Node head) {
	
		
		// the idea is to find the middle element of the the linked list for any startNode and endNode
		// then create a Tree node out of it
		// make the left subtree using the left nodes of the middle node
		// make the right subtree using the right nodes of the middle node
		
		
		Node startNode = head;
		// finding the endNode
		Node endNode = head;
		while(endNode.next!=null) {
			endNode = endNode.next;
		}
		this.bstRoot =  constructBSTUtil(startNode, endNode);
		
	}
	private TreeNode constructBSTUtil(Node startNode,Node endNode) {
		
		// first finding the exit condition
		if(startNode == endNode) {
			return new TreeNode(startNode.data);
		}
		
		// now finding the middle node
		Node middleNode = this.findMiddleNode(startNode, endNode);
		
		TreeNode root = new TreeNode(middleNode.data);
		
		// for creating the right subtree we can easily pass
		root.rightNode =  this.constructBSTUtil(middleNode.next, endNode);
		
		// for creating the left subtree we need to find the address of successor node of middle node
		Node temp = startNode;
		
		while(temp.next!=middleNode) {
			temp = temp.next;
		}
		root.leftNode = this.constructBSTUtil(startNode, temp);
		
		
		return root;
	}
	
	public Node findMiddleNode(Node startNode,Node endNode) {
		// this method is to find the middle node of linked list
		// we will use the two pointer method 
		// slow pointer and fast pointer
		// move slow by one and fast pointer by 2
		Node slowPtr = startNode;
		Node fastPtr = startNode;
		while(fastPtr!= null && fastPtr.next!=null && fastPtr.next.next != null && fastPtr!=endNode) {
			slowPtr = slowPtr.next;
			fastPtr = fastPtr.next.next;
		}
		return slowPtr;
		
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


#### solution 2

- there is another solution need to understand from geeks for geeks





> ## Transform a BST to greater sum tree

- https://www.geeksforgeeks.org/transform-bst-sum-tree/


### Solution 1  (Large complexity)

- start using any traversal of the tree lets say inorder. 
- For every node traverset the whole tree and check which nodes are greater than the current node. 
- maintain a sum and update the value of node for each traversal
- this is of O(n^2) complexity




#### Solution 2 (Better apporac) (VVI)

- we will use the concept that if we do inorder traversal of the tree then the nodes are in ascending order
- which means if we take any node from the inorder traversal then all the nodes to the right are greater
- so we will first traverse the whole tree and calcualte the sum
- then we will do inorder traversal and for every node during backtracking we will reduce the node value from the sum and updat that node
- Note: this sum is a global variable which gets updated when we subtract the current node value from it



#### soluton 3 ( same complexity of O(n) as of solution 2)

- we will do reverse inorder traversal
  - first right subtree  then root then left subtree
- during backtracking we will add the value of individual node to the sum and that will be passed to the traversal
- initailly we will keep the sum value as 0








> ## Count and Construct All possible BST from 1 to N

- https://www.geeksforgeeks.org/construct-all-possible-bsts-for-keys-1-to-n/

- total number of trees that can be formed will be equal to nth Catalan Number
- Read how to find the nth Catlan number



> ## BST to a Tree with sum of all smaller keys

- https://www.geeksforgeeks.org/binary-search-tree-data-structure/

- same approach as the  Transform a BST to greater sum tree
- but have to keep in mind that after finding the total sum we need to do traversal in this way first rightSubTree-> node -> leftSubtree
- and subtract the node value once it has been visited in backtracking







> ## Convert BST to Min Heap




> ## In-place Convert BST into a Min-Heap




> ## Construct BST from level order traversal














