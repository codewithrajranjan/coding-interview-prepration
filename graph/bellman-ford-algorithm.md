## Bellman Ford algorithm


- In Dijkstra algorithm at each step or iteration we make a vertex permanent
- In Bellman Ford algorithm the shortest distances are not finalized till the end of the algorithm. so in bellman ford algorithm we drop the concept of making the vertex as permanent
- so Dijkstra algo is known as label setting algo and Bellman ford is know as label correcting algo
- this algo doesn't work properly if graph contains a negative cycle reachable from source vertex i.e a cycle consisting fo edges whose edges weights add up to a negativ number
- in bellman ford algo each vertex can be inserted maximum n times where n is the number of vertex in the graph. If a vertex is getting inserted more than n times then it means that there is a negative weight cycle from the source vertex
- so in our algorithm we can keep count of the number of times a vertex is getting inserted in the queue
- the complexity of bellman ford algo is O(VE) because we don't make the vertex permanent but in the case of Dijkstra the complexity is O(E+VLog(V)) which is better than the bellman ford algo because at every step we are making the vertex permanent



## Algorithm one

1 initialize the path lenght and predecessor with inifinity and nil. This is same as the dijkstra
2 make the pathlength of source vertex as 0 and insert that into a queue
3 delete the vertex from front of queue and make it current vertex
4 examine all the vertex adjacent to currentVertex and check the condition of minimum weight which is same of Dijkstra and do the relabelling if required
  - pathLength(CurrenVertex) + weight of vertex from currentVertex to adjacent verte < pathLength(adjacentVertex)
5 eachvertex that is relabelled is inserted into queue provided it is not already present in the queue
6 Repeat from step 3 until the queue is not empty



```java

package selftuts;

import java.util.LinkedList;
import java.util.Queue;

import javax.sound.midi.SoundbankResource;

// dijkstra algorithm priority queue

class Selftuts{

	public static void main(String[] args) {
		Graph g = new Graph();
		g.bellmanFord(0);;
	}
}



class Graph {
	
	// creating graph using adjacency matrix
	int[][]  graph =  {
			{0, 4, 0, 0, 0, 0, 0, 8, 0}, 
            {4, 0, 8, 0, 0, 0, 0, 11, 0}, 
            {0, 8, 0, 7, 0, 4, 0, 0, 2}, 
            {0, 0, 7, 0, 9, 14, 0, 0, 0}, 
            {0, 0, 0, 9, 0, 10, 0, 0, 0}, 
            {0, 0, 4, 14, 10, 0, 2, 0, 0}, 
            {0, 0, 0, 0, 0, 2, 0, 1, 6}, 
            {8, 11, 0, 0, 0, 0, 1, 0, 7}, 
            {0, 0, 2, 0, 0, 0, 6, 7, 0} 
           }; 
	
	public void bellmanFord(int sourceVertex) {
		int totalVertex = this.graph.length;

		// pathDistance array
		int[] pathDistance = new int[totalVertex];
		
		// predecessor array
		int[] predecessor = new int[totalVertex];
		
		// initializing the arrays
		for(int i=0;i<totalVertex;i++) {
			pathDistance[i] = Integer.MAX_VALUE;
			predecessor[i] = -1;
		}
		
		// creating the queue
		Queue<Integer> q = new LinkedList<Integer>();
		
		// making the source vertex pathDistance as 0 and pushing that into the queue
		pathDistance[sourceVertex] = 0;
		q.add(sourceVertex);
		
		while(q.isEmpty()==false) {
			int currentVertex = q.remove();

			//getting all the adjacent vertex
			for(int i=0;i<totalVertex;i++) {
				int weight = this.graph[currentVertex][i];
				
				// if weight is more than zero then only it means that edge exits
				if(weight > 0) {
					int pathDistanceOfCurrentVertex = pathDistance[currentVertex];
					int pathDistanceOfAdjacentVertex = pathDistance[i];

					// the first condition is from the dijkstra
					// the second condition comes from bellmanford algo that only push the code to queue if it is not already present
					if((pathDistanceOfCurrentVertex+weight < pathDistanceOfAdjacentVertex) && q.contains(i)==false) {
						pathDistance[i] = pathDistanceOfCurrentVertex + weight;
						predecessor[i] = currentVertex;
						q.add(i);
					}
				}
			}

		}
		// once it is completed then printing
		for(int i=0;i<totalVertex;i++) {
		      System.out.println(i+"--"+pathDistance[i]);
		}

	}
	
}


```
