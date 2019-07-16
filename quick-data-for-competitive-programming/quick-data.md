> ## ASCII Data

- The ascii value of 
  - a = 97
  - z = 122
  - A = 65
  - Z = 90

> ## Graph Bootstarpping using Aajacency List in Java


```java

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


class Edge {
	int src;
	int dest;
	public Edge(int src,int dest) {
		this.src = src;
		this.dest = dest;
	}
}


class Graph {
	
	private ArrayList<ArrayList<Integer>> graph;

	public Graph() {

		// List of graph edges as per above diagram
		List<Edge> edges = Arrays.asList(
							new Edge(1, 0), 
							new Edge(2,1),
							new Edge(3,4), 
							new Edge(4,0)
						);
		
		graph = new ArrayList<ArrayList<Integer>>();

		for(int i=0;i<4;i++) {
			graph.add(i,new ArrayList<Integer>());
		}
		
		// adding the vertex to the graph
		for(int i=0;i<edges.size();i++) {
			Edge e = edges.get(i);
			graph.get(e.src).add(e.dest);
		}

	}
	
}


```

-------------------------------------------------------------------------------------


> ## Binary Tree Representation


```java
package selftuts;

class Selftuts{

	public static void main(String[] args) {
		
		
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
	TreeNode one,two,three,four,five;
	public Tree() {
			
		/*  we will be creating this tree
		 * 					1
		 * 				 /     \
		 *			    2 	    3
		 *			  /   \     
		 *			 4     5  
		 * 						
		 */
		
		// Tree creation code starts 
		one = new TreeNode(1);
		two = new TreeNode(2);
		three = new TreeNode(3);
		four = new TreeNode(4);
		five = new TreeNode(5);
		one.leftNode = two;
		one.rightNode = three;
		two.leftNode = four;
		two.rightNode = five;

	}
	
}


```

> ## Level Order Traversal Code

- This helps to check if the tree was created correctly or not


```java

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


```



> ## Find if number is prime or not

```java

	public static boolean isPrime(int n) { 
	    // Corner cases 
	    if (n <= 1) 
		return false; 
	    if (n <= 3) 
		return true; 
      
	    // This is checked so that we can skip 
	    // middle five numbers in below loop 
	    if (n % 2 == 0 || n % 3 == 0) 
		return false; 
      
	    for (int i = 5; i * i <= n; i = i + 6) 
		if (n % i == 0 || n % (i + 2) == 0) 
		    return false; 
      
	    return true; 
	} 


```


> ## Iterate over the keys of hashmap


```java

	    // here the keys are character

	    for (Character c : hm.keySet()) {

            }

```


