## Count the number of nodes in a given level in bfs


- idea is to do bfs 
- and create a Node class that will hold two data.
  - one for the vertex value 
  - another for the level

- wherever we push the data to queu we will add the level value as level of parent + 1


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
                g.countNodesAtLevel(2);
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
class Node {
        int vertex;
        int level;
        public Node(int vertex,int level) {
                this.vertex = vertex;
                this.level = level;
        }
}

class Graph {
        
        private ArrayList<ArrayList<Integer>> graph;

        public Graph() {

                // List of graph edges as per above diagram
                List<Edge> edges = Arrays.asList(
                                                                                new Edge(0,1), 
                                                                                new Edge(0,2), 
                                                                                new Edge(1,3),
                                                                                new Edge(1,4), 
                                                                                new Edge(1,5),
                                                                                new Edge(2,6)
                                                                        );
                
                graph = new ArrayList<ArrayList<Integer>>();

                for(int i=0;i<7;i++) {
                        graph.add(i,new ArrayList<Integer>());
                }
                
                // adding the vertex to the graph
                for(int i=0;i<edges.size();i++) {
                        Edge e = edges.get(i);
                        graph.get(e.src).add(e.dest);
                }

        }
        public void countNodesAtLevel(int level) {
                // we will do bfs 
                int totalVertex = this.graph.size();
                Queue<Node> q = new LinkedList<Node>();
                int[] visited = new int[totalVertex];

                int countNodes = 0;
                q.add(new Node(0,0));

                while(q.isEmpty() == false) {
                        Node currentNode = q.remove(); 
                        if(currentNode.level == level) {
                                countNodes++;
                        }
                        visited[currentNode.vertex] = 1;
                        
                        // now getting all the adjacent vertex
                        ArrayList<Integer> adjacentVertexList = this.graph.get(currentNode.vertex);
                        for(int i=0;i<adjacentVertexList.size();i++) {
                                int adjacentVertex = adjacentVertexList.get(i);
                                if(visited[adjacentVertex]==0) {
                                        visited[adjacentVertex] = 1;
                                        q.add(new Node(adjacentVertex,currentNode.level+1));
                                }
                        }
                        
                }
                System.out.println(countNodes);
        }
        
}
```



