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
