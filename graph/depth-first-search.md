## DFS

- mark the vertex as visited in starting also and before calling the dfs on the adjacent vertex also








### Iterative Depth first search

- idea is to use a stack
- note the below implentation will print all the vertex is the graph is connected
- if the graph is not connected then we need to call dfs on every vertex and keep track of visited vertex



```java

package selftuts;

// iterative depth first graph traversal
// https://www.geeksforgeeks.org/iterative-depth-first-traversal/

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Stack;

class Selftuts{

        public static void main(String[] args) {
                Graph g = new Graph();
                g.iterativeDFS(0);
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

class Graph {
        
        private ArrayList<ArrayList<Integer>> graph;

        public Graph() {

                // List of graph edges as per above diagram
                List<Edge> edges = Arrays.asList(
                                                                                new Edge(1, 0), 
                                                                                new Edge(0,3), 
                                                                                new Edge(3,4),
                                                                                new Edge(4,0), 
                                                                                new Edge(0,2),
                                                                                new Edge(2,1),
                                                                                new Edge(1,0)
                                                                        );
                
                graph = new ArrayList<ArrayList<Integer>>();

                for(int i=0;i<5;i++) {
                        graph.add(i,new ArrayList<Integer>());
                }
                
                // adding the vertex to the graph
                for(int i=0;i<edges.size();i++) {
                        Edge e = edges.get(i);
                        graph.get(e.src).add(e.dest);
                }

        }
        public void iterativeDFS(int vertex) {
                int totalVertex = this.graph.size();
                Stack<Integer> st = new Stack<Integer>();
                st.push(vertex);

                int[] visited = new int[totalVertex];
                visited[vertex] = 1;

                while(st.isEmpty() == false) {
                        int currentVertex = st.pop();
                        System.out.println(currentVertex);
                        
                        // gettting all the adjacent vertex
                        ArrayList<Integer> adjacentList = this.graph.get(currentVertex);
                        for(int i=0;i<adjacentList.size();i++) {
                                int adjacentVertex = adjacentList.get(i);
                                if(visited[adjacentVertex]==0) {
                                        visited[adjacentVertex] = 1;
                                        st.push(adjacentVertex);
                                }
                        }
                }
        }
        
}


```
