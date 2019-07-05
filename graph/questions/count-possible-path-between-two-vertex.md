## Count possible path between two vertex

- idea is to do a bfs 
- match the source and destination vertex if they matches then increase the count 
- in this process mainting a pathList array and push that to the arraylist whenever we are doint bfs on that vertex. once the bfs on that vertex is done then remove the vertex from path vertex. this is kind of backtracking concept
- (VVI) one more thing is when the bfs of all the adjacent vertex of a parent vertex is done then mark the parent vertex as unvisited in the visited array that we maintain during bfs algo. This is done because we have to count all the possible path 



- Note : this algo will fail if there is cycle in the graph


```java

package selftuts;

// iterative depth first graph traversal
// https://www.geeksforgeeks.org/iterative-depth-first-traversal/

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Stack;

class Selftuts{

	public static void main(String[] args) {
		Graph g = new Graph();
		g.countPath(2, 3);
	}
}


class Edge {
	int src;
	int dest;
	
	public Edge(int src,int dest) {
		this.src = src;
		this.dest = dest;
	}
}
class Count{
	int count = 0;
}

class Graph {
	
	private ArrayList<ArrayList<Integer>> graph;

	public Graph() {

		// List of graph edges as per above diagram
		List<Edge> edges = Arrays.asList(
										new Edge(0,1), 
										new Edge(0,2), 
										new Edge(0,3),
										new Edge(2,0), 
										new Edge(2,1),
										new Edge(1,3)
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
	public void countPath(int src,int dest) {
		
		int totalVertex = this.graph.size();
		int[] visited = new int[totalVertex];

		ArrayList<Integer> pathList = new ArrayList<Integer>();
		dfs(src,dest,visited,pathList);
		
	}
	public void dfs(int src,int dest,int[] visited,ArrayList<Integer> pathList) {
		// checking if src and destination is same
		if(src==dest) {
			// printing the path list
			System.out.println(Arrays.toString(pathList.toArray()));
		}
		visited[src] = 1;
		
		// finding the adjacent vertex
		ArrayList<Integer> adjacentVertexList = this.graph.get(src);
		for(int i=0;i<adjacentVertexList.size();i++) {
			int adjacentVertex = adjacentVertexList.get(i);
			if(visited[adjacentVertex]==0) {
				pathList.add(adjacentVertex);
				int index = pathList.size()-1;
				dfs(adjacentVertex,dest,visited,pathList);
				pathList.remove(index);
			}
		}
		visited[src] = 0;
	}
	
	
}

```
