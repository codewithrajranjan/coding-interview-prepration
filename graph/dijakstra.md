## Dijakstra Algorithm

- finding shortest path form source vertex to all the other vertex
- the algorithm works correctly only if the weights of the graph are positive. if any negative weights are there then it will not work
- if we want to find the shortest distance between source and destination vertex then we need to stop the algorithm as soon as we encounter the destination vertex
- if there is one or more vertex that is unreachable from source vertex then we can't find the shortest path for all the vertex from the source vertex
- Dijakstra algo is used to find single source shortest path
- min priority queue is the most commonly used data structure used for implementing the Dijakstra algorithm
- the complexity of Dijkastra algorithm is n^2 because if there are n nodes then we run the loop n times for each vertex and for each vertex we find the vertex with minimumPathLength and which is temporary
- Dijkastra algorithm can be applied for
  - directed and weighted graph
  - unweighted graph
  - undirected and unweigheted graph
- Dijkastra algorithm can't be applied on graph having negative weights
- the number of iteration involved in Bellman Ford Algorithm is more than that of  Dijkstra algorithm
- Dijkstra algorithm is perfect example of greedy algorithm
- Dijkstra doesn't work with negative weights because once we make a vertex permanent then we don't relabel that vertex




## Implementation one : General


1 create some initial arrays with size equal to total number of vertices. Note the index of these array denote the vertex itself
  - pathDistance : initialize each cell with infinity. Here we can take as Integer.MAX_VALUE
  - status : initalize each cell with temporary statu. 0 value can be taken as temporary and 1 as permanent
  - predecessor : initalize each with nil. Here we can take value of -1 as NIL

2 Take the source vertex and make the path distance as 0


3 At any point we need to find the vertex which is having minimum distance and is not permanent. we will call it minimumPathDistanceVertex

4 first make the vertex as permanent

5 find all the connectedNodes to the the minimumPathDistanceNode 

6 for each connected node find the value
  -  value1 = pathDistance(minimumPathDistanceVertex)+ weight of minimumPathDistanceNode to the eachConnectedNode
  -  value 2 = then find pathDistance of eachConnectedNode
  - if value1 < value2
    - upate the pathDistance of eachConnectedNode to the value1 and also update the predecessor array of eachConnectedNode with the minimumPathDistanceVertex

7 Repeat the above algo until all the pathdistance is not equal to infinity or all the vertex status becomes permanent

```java

package selftuts;
// Djikstras Algorithm
// graph has been taken form here  https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-greedy-algo-7/



// simple dijkstra algorithm 

class Selftuts{

	public static void main(String[] args) {
		Graph g = new Graph();
		g.dijkstra(0);
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
	
	public void dijkstra(int sourceVertex) {
		
		
		// total vertex in graph
		int totalVertex = this.graph.length;
		// so we are having vertex as 0,1,2,3,....,totalVertex-1
		
		// creating the pathDistanceArray
		int[] pathDistance = new int[totalVertex];
		
		// creating the predecessor array
		int[] predecessor = new int[totalVertex];
		
		
		// creating the status array
		boolean[] status = new boolean[totalVertex];
		
		
		// doing the initialization of these arrays
		for(int i=0;i<totalVertex;i++) {
			// making the pathDistance as infinite
			pathDistance[i] = Integer.MAX_VALUE;
			// making the status of all as temporary
			status[i] = false;
			
			// making the predecessor as nil
			predecessor[i] = -1;
		}
		// making the pathDistance of source vertex as 0
		pathDistance[sourceVertex] = 0;

		// NOTE : here we are going for intrative approaca because if we go for recursion then the exit condition will be the state when the status of all the vertex is permanent
		// But if some of the vertex is not connected to the source vertex then we can't make all the vertex as permanent 
		// so we are running the loop for the total count of totalVertex
		// we need to run our algo for the count of totalVertex times
		for(int i=0;i<totalVertex;i++) {
			// find the vertex with mininumPathDistance
			int miniumumPathDistanceVertex = this.findMinimumPathDistanceAndTemproaryVertex(status, pathDistance);
			// making the vertex permanent
			status[miniumumPathDistanceVertex] = true;
			// finding all the connected nodes 
			for(int j=0;j<totalVertex;j++) {
				if(this.graph[miniumumPathDistanceVertex][j]>0) {
					int weight = this.graph[miniumumPathDistanceVertex][j];
					int pathDistanceOfCurrentMinimumVertex = pathDistance[miniumumPathDistanceVertex];
					int pathDistanceOfConnectedVertex = pathDistance[j];
					
					
					// now the main algorithm
					if(pathDistanceOfCurrentMinimumVertex+weight < pathDistanceOfConnectedVertex) {
						pathDistance[j] = pathDistanceOfCurrentMinimumVertex+weight;
						predecessor[j] = miniumumPathDistanceVertex;
					}
				}
			}
			
		}
		// once it is complted then printing
		for(int i=0;i<totalVertex;i++) {
			System.out.println(i+"--"+pathDistance[i]);
		}
	}
	private int findMinimumPathDistanceAndTemproaryVertex(boolean[] status,int[] pathDistance) {
		int minPathDistance = Integer.MAX_VALUE;
		int vertexWithMininumPathDistance = -1;
		int totalVertex = status.length;
		for(int i=0;i<totalVertex;i++) {
			if(pathDistance[i]<minPathDistance && status[i]==false) {
				minPathDistance = pathDistance[i];
				vertexWithMininumPathDistance = i;
			}
		}
		return vertexWithMininumPathDistance;
	}
	
}


```


## Implementation with Priority Queue

- In Implemenation one (General) we are having the step 2 where we are finding the vertex with minimum distance and which is temporary
- using priority queue we can achieve this
- we will create a priority queue with a comparator that accept a Pair consiting of pathDistance of vertex and the vertex e.g Pari(10,0). where 10 is the path distance of vertex 0.
- Priority queue will only help in finding the required node which is temporary and having minimum path distance


```java

    PriorityQueue<Pair<Integer, Integer>> pq = new PriorityQueue<>(vertices, new Comparator<Pair<Integer, Integer>>() {
                    @Override
                    public int compare(Pair<Integer, Integer> p1, Pair<Integer, Integer> p2) {
                                        //sort using distance values
                                        int key1 = p1.getKey();
                                        int key2 = p2.getKey();
                                        return key1-key2;
                    }
    });

```

- the algorithm runs continuously depending on the element present in the queue or not





## Implementation using Binary min Heap method





