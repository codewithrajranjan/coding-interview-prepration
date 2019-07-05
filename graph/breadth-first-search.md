## Breadth First Search


- the time complexity of breadth first search is O(V+E)  where V is the number of vertex and E is the number of edges
- this depends on the data structure that you are using.
  - if it is adjacency matrix then it will be O(v^2) beacuse for every vertex we will have to check that edge exits with other vertex on not. since it is an array so we need to traverse each cell and total cell will be equal to the number of edges
  - if it is adjacency list 
- during dfs mark the vertex as visitied when after extracting it from the queue and also before pushing it to the queue


- BFS can be used for shortest path calculation when the weight of all the edges are same








## Arrival and Departure time of vertex in DFS

- arrival time is the time when the vertex was first explored for the first time
- departure time is the time when we have explored all the neighbours of that particular vertex and we are ready to backtrack


```java

package selftuts;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class Selftuts{

	public static void main(String[] args) {
		Graph g = new Graph();
		g.findArrivalDepartueTime(0);
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


class TimeCount {
	int timeCount;
	public TimeCount() {
		this.timeCount = 0;
	}
	
}

class Graph {
	
	private ArrayList<ArrayList<Integer>> graph;

	public Graph() {

		// List of graph edges as per above diagram
		List<Edge> edges = Arrays.asList(
										new Edge(0, 1), new Edge(0, 2),
										new Edge(2, 3), new Edge(2, 4),
										new Edge(3, 1), new Edge(3, 5),
										new Edge(4, 5), new Edge(6, 7)
									);
		
		graph = new ArrayList<ArrayList<Integer>>();

		for(int i=0;i<8;i++) {
			graph.add(i,new ArrayList<Integer>());
		}
		
		// adding the vertex to the graph
		for(int i=0;i<edges.size();i++) {
			Edge e = edges.get(i);
			graph.get(e.src).add(e.dest);
		}

	}
	
	public void findArrivalDepartueTime(Integer vertex) {
		int totalVertex = this.graph.size();

		int[] arrivalTime = new int[totalVertex];
		int[] departureTime = new int[totalVertex];
		int[] visited = new int[totalVertex];
		TimeCount t = new TimeCount();
		t.timeCount = -1;
		arrivalTime[vertex] = 0;

		dfs(vertex,visited,arrivalTime,departureTime,t);
		// checking if any of the vertex is not visited
		// this can happen if the graph is not connnected
		for(int i=0;i<visited.length;i++) {
			if(visited[i]==0) {
				dfs(i,visited,arrivalTime,departureTime,t);
			}
		}
		
		for(int i=0;i<totalVertex;i++) {
			System.out.println(i+"--"+arrivalTime[i]+"--"+departureTime[i]);
		}
	}
	
	private void dfs(int vertex,int[] visited,int[] arrivalTime,int[] departureTime,TimeCount t) {
		
		
		// marking the node as visited
		visited[vertex] = 1;
		++t.timeCount;
		arrivalTime[vertex] = t.timeCount;
		
		// now finding the adjacent nodes
		ArrayList<Integer> adjacentVertexList = this.graph.get(vertex);
		
		// calling dfs for adjacent vertex if they are not visited
		for(int i=0;i<adjacentVertexList.size();i++) {
			int adjacentVertex = adjacentVertexList.get(i);
			if(visited[adjacentVertex]==0) {
				
				visited[adjacentVertex] = 1;
				dfs(adjacentVertex,visited,arrivalTime,departureTime,t);
			}
		}
		departureTime[vertex] = ++t.timeCount;
		
		
	}

}

```

### Application of arrival and departure time

- topological sorting in DAG(Directed Acyclic Graph)
- Finding 2-(edge or vertex)-connected components
- Finding 3-(edge or vertex) connected components
- Findign the bridges of a graph
- Finding biconnectivity of graph
- Detecting cycle in a directed graph
- Tarjan algo to find strongly connected components





