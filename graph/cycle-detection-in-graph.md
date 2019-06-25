## Cycle detection in undirected graph


- this solution is based on breadth first search
- we will traverse level by level which is basically breadth first search
- now when we do breadth first search then we know that we mark the each level node as visited
- so we can simply say that if we are visiting a already visited node then there is a cycle
  - but here is a catch. when we go to the child level of current level then the child level nodes can also visit the parent node as the graph is undirected. the parent node has already been visited.
  - if we follow the above algo that if we visit a already visited node then that will be the criteria of cycle which is not true
  - so we need to modify the algorithm that during breadth first search if we visit a already visited node which is not the immediate parent then there is a cycle

- how to find the parent vertex
  - when we are doing the breadh first search then we will maintain an array of parent. whenever we are pushing the node in queue in bfs we will update the parent array for the vertex being pushed in the array


```java

package selftuts;

// check if there is cycle in undirected graph or not


import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

class Selftuts{

        public static void main(String[] args) {

                int totalVertex = 12;
                ArrayList<Edge> edges = new ArrayList<Edge>();
                edges.add(new Edge(1, 2));
                edges.add(new Edge(1, 3));
                edges.add(new Edge(1, 4));
                edges.add(new Edge(2, 5));
                edges.add(new Edge(2, 6));
                edges.add(new Edge(5, 9));
                edges.add(new Edge(5, 10));
                edges.add(new Edge(4, 7));
                edges.add(new Edge(4, 8));
                edges.add(new Edge(7, 11));
                edges.add(new Edge(7, 12));
                edges.add(new Edge(6, 10));
                
                Graph g = new Graph(edges, totalVertex);
                System.out.println(g.checkCycle());


        }
}

class Graph {

        private ArrayList<ArrayList<Integer>> graph;
        
        private int totalVertex;
        
        public Graph(ArrayList<Edge> edges,int totalVertex) {
                // note that the vertex is starting from 1 so we are taking the value as totalVertex+1
                this.totalVertex = totalVertex + 1;
                this.graph = new ArrayList<ArrayList<Integer>>(this.totalVertex);

                for(int i=0;i<this.totalVertex;i++) {
                        this.graph.add(i,new ArrayList<Integer>());
                }

                for(int i=0;i<edges.size();i++) {
                        int src = edges.get(i).src;
                        int dest = edges.get(i).dest;

                        // adding data to the adjacency list. since it is undirected graph so adding edges vice versa
                        this.graph.get(src).add(dest);
                        this.graph.get(dest).add(src);
                }
        }
        
        public boolean checkCycle() {
                // for checking we will use breadth first search 
                // if there is a vertex which has already been visited and is not the parent of current vertex  then there is cycle
                boolean cycleDetected = false;
                
                int[] visitedVertex = new int[this.totalVertex];
                int[] parent = new int[this.totalVertex];
                
                Queue<Integer> q = new LinkedList<Integer>();
                
                q.add(1);
                parent[1] = -1;
                
                while(q.isEmpty()==false) {
                        int currentVertex = q.remove();
                        visitedVertex[currentVertex] = 1;
                        
                        
                        // now getting all the adjacent vertex to current node
                        ArrayList<Integer> adjacentVertexList = this.graph.get(currentVertex);
                        
                        //looping over each adjacent vertex
                        for(int i=0;i<adjacentVertexList.size();i++) {
                                int adjacentVertex = adjacentVertexList.get(i);
                                //first we need to check if the adjacentVertex is visited or not
                                if(visitedVertex[adjacentVertex]==1) {
                                        // if it is visited then we need to check if it is not the parent of currentVertex 
                                        // then there is cycle
                                        int parentVertex = parent[currentVertex];
                                        if(parentVertex!=adjacentVertex) {

                                                System.out.println(currentVertex+"--"+adjacentVertex+"--"+parentVertex);
                                                cycleDetected = true;
                                                break;
                                        }
                                        
                                }else {
                                        q.add(adjacentVertex);

                                        parent[adjacentVertex] = currentVertex;
                                }
                        }
                        if(cycleDetected == true) {
                                break;
                        }
                }
                                
                return cycleDetected;
                
        }
        
        
        
}

class Edge{
        int src;
        int dest;
        public Edge(int src,int dest) {
                this.src = src;
                this.dest = dest;
        }
}


```


- Solution using Depth first search
  
  - here also we will use the depth first search algo
  - we will modify it some what that whenever we get an adjacent vertex that is already visted and if it is not the parent of the adjacent vertex then then there is cycle in the graph



```java

package selftuts;

// check if there is cycle in undirected graph or not


import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

class Selftuts{

	public static void main(String[] args) {

		int totalVertex = 12;
		ArrayList<Edge> edges = new ArrayList<Edge>();
		edges.add(new Edge(1, 2));
		edges.add(new Edge(1, 3));
		edges.add(new Edge(1, 4));
		edges.add(new Edge(2, 5));
		edges.add(new Edge(2, 6));
		edges.add(new Edge(5, 9));
		edges.add(new Edge(5, 10));
		edges.add(new Edge(4, 7));
		edges.add(new Edge(4, 8));
		edges.add(new Edge(7, 11));
		edges.add(new Edge(7, 12));
		edges.add(new Edge(6, 10));
		
		Graph g = new Graph(edges, totalVertex);
		System.out.println(g.checkCycle());


	}
}

class Graph {

	private ArrayList<ArrayList<Integer>> graph;
	
	private int totalVertex;
	
	public Graph(ArrayList<Edge> edges,int totalVertex) {
		// note that the vertex is starting from 1 so we are taking the value as totalVertex+1
		this.totalVertex = totalVertex + 1;
		this.graph = new ArrayList<ArrayList<Integer>>(this.totalVertex);

		for(int i=0;i<this.totalVertex;i++) {
			this.graph.add(i,new ArrayList<Integer>());
		}

		for(int i=0;i<edges.size();i++) {
			int src = edges.get(i).src;
			int dest = edges.get(i).dest;

			// adding data to the adjacency list. since it is undirected graph so adding edges vice versa
			this.graph.get(src).add(dest);
			this.graph.get(dest).add(src);
		}
	}
	public boolean checkCycle() {
		int[] visitedVertex = new int[this.totalVertex];
		int[] parentVertexList = new int[this.totalVertex];
		parentVertexList[1] = -1;
		return dfsUtil(1, visitedVertex, parentVertexList);
	}
	public boolean dfsUtil(int currentVertex,int[] visitedVertex,int[] parentVertexList) {
		
		//mark the vertex as visited 
		visitedVertex[currentVertex] = 1;


		// get all the adjacent node
		ArrayList<Integer> adjacentList = this.graph.get(currentVertex);
		
		for(int i=0;i<adjacentList.size();i++) {
			int adjacentVertex = adjacentList.get(i);
			if(visitedVertex[adjacentVertex]==1) {

				// if the vertex has already been visited
				// then we need to check if it is parent vertex or not
				// get the parent of current vertex
				int parentVertex = parentVertexList[currentVertex];
				System.out.println(currentVertex+"=="+adjacentVertex+"=="+parentVertex);
				if(parentVertex != adjacentVertex) {
					// cycle is detected
					return true;
				}
			}else {
				parentVertexList[adjacentVertex] = currentVertex;
				if(dfsUtil(adjacentVertex, visitedVertex, parentVertexList)) {
					return true;
				}
			}
		}
		return false;
	}
	
	
	
	
}

class Edge{
	int src;
	int dest;
	public Edge(int src,int dest) {
		this.src = src;
		this.dest = dest;
	}
}




```


