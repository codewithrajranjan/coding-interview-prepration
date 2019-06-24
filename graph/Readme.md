# Graph

## Important points

- A tree is undirected acyclic graph
- Each node in graph can have multiple parent but for a tree each node have a single parent

## Node 

- Node are entities whose relationship are expressed using edges
- Root nodes has no ancestor
- leaf nodes has no successor

## Edge

- Edges show relationship between two nodes
- If all the edge have value equal to 1 then the graph is called non-weighted graph
- If any of the edges have value other than 1 then the graph is called weighted graph
- An edge can start from the same node and edge on the same node
- undirected edge represents a bi-directional relationship between the two nodes

## Types of graph

- Undirected : if the edges are bidirectional then it is called undirected which means if there is edge between nodes A and B then we can go from A to B and from B to A.
- Directed : All edges are uni-directional. If there is a directed edge from A to B then we can only from A to B and not from B to A.
- Weighted : Every edge has been assigned a cost
- Cyclic : When a path starts from one node and ends at the same node then that type of graph is cyclic
- Acyclic : Graph which has node cycle





## Shortest Path if all the edges have same weight(VVI)

- if all the path has same edge then we don't need to apply Dijkstra algorithm because it's complexity will be O(V+ELogV)
- we can simply solve it using the bfs because when weight of the edge are same so if we are moving from the current vertex to any other connected vertexthe value added to the path will be equal. and also we are moving level by level so the whenever we reach the destination vertex we will stop the bfs. The complexity of BFS will be O(V+E) which is less than Dijkstra in this case



##  Given a directed weighted graph. You are also given the shortest path from a source vertex ‘s’ to a destination vertex ‘t’.  If weight of every edge is increased by 10 units, does the shortest path remain same in the modified graph?




### Does the shortest path change when weights of all edges are multiplied by 10?




### Given a directed graph where every edge has weight as either 1 or 2, find the shortest path from a given source vertex ‘s’ to a given destination vertex ‘t’. Expected time complexity is O(V+E).




### Given a directed acyclic weighted graph, how to find the shortest path from a source s to a destination t in O(V+E) time?







### Snake and Ladder Game : minimum number of throws to end the game

- the snake and ladder board can be converted into a graph
- if you are at vertex v then you can move to v+1, v+2, v+3, v+4, v+5, v+6  but you need to check that if any place in a ladder or snake then you need to create the graph in that same way

- and then when we throw a dice then we move from one vertex to another and each vertex is having same weight so we know that if in a graph we have same weight for all the edges then minimum path can be calculated using breadth first search


```java

package selftuts;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

// minimum number of throws to win snake and ladder game
// https://practice.geeksforgeeks.org/problems/snake-and-ladder-problem/0

class Selftuts{

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int t = s.nextInt();
		while(t-->0) {
			int n = s.nextInt();

			HashMap<Integer,Integer> ladder = new HashMap<Integer,Integer>();
			HashMap<Integer,Integer> snake = new HashMap<Integer,Integer>();
		
			for(int i=0;i<n;i++) {
				int a = s.nextInt();
				int b = s.nextInt();
				if(b>a) {
					// this means that is a ladder
					ladder.put(a,b);
				}else {
					// this means that sanke is encountered
					snake.put(a,b);
				}

			}
			
			
			// now we need to create the graph
			// note that the node is starting from 1 and ending at 30
			ArrayList<ArrayList<Integer>> adjList = new ArrayList<ArrayList<Integer>>();
			adjList.add(0,new ArrayList<Integer>());
			for(int i=1;i<=30;i++) {
				// initializing the array list for adjacent nodes
				adjList.add(i,new ArrayList<Integer>());

				// if the current vertex is v then it is connected to other vertex
				// v+1,v+2,v+3,v+4,v+5,v+6 provided there is not ladder or snake
				// if there is ladder or snake then we need to modify the code same way
				for(int j=1;j<=6;j++) {
					int nextVertex = i+j;
					// checking the next vertex is within board range
					if(nextVertex<=30) {
						// check if next Vertex is present in ladder
						if(ladder.containsKey(nextVertex)) {
							nextVertex = ladder.get(nextVertex);
						}else if(snake.containsKey(nextVertex)) {
							nextVertex = snake.get(nextVertex);
						}
						adjList.get(i).add(nextVertex);
					}
				}

			} // graph creation ends here
			
			
			// now we need to do a bfs for reaching the end of snake and ladder board
			int[] visitedVertex  = new int[31];
			Queue<GraphNode> q = new LinkedList<GraphNode>();
			
			// adding the first vertex to it
			q.add(new GraphNode(1,0));
			GraphNode currentGraphNode = null;
			// now performing bfs
			while(q.isEmpty() == false) {
				// take out the current vertex
				currentGraphNode= q.remove();
				int currentVertex = currentGraphNode.vertex;

				// checking if we have reached the end of the snake and ladder
				if(currentVertex == 30 ) {
					break;
				}
				// mark the current vertex as visited
				visitedVertex[currentVertex] = 1;
				
				// access all the adjacent vertex to this currentVertext
				ArrayList<Integer> adjacentVertexList = adjList.get(currentVertex);
				
				for(int k=0;k<adjacentVertexList.size();k++) {
					int adjacentVertex = adjacentVertexList.get(k);
					// if it is not visited then consider for bfs

					if(visitedVertex[adjacentVertex]==0) {
						q.add(new GraphNode(adjacentVertex,currentGraphNode.distance+1));
					}
				}
			} // end of while

			System.out.println(currentGraphNode.distance);
		}
	}
}


class GraphNode{
	int vertex;
	int distance;
	public GraphNode(int vertex,int distance) {
		this.vertex = vertex;
		this.distance = distance;
	}
}


```



