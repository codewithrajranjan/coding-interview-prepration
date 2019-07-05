## Mother vertex

- mother vertex is the vertex in graph such that all other vertices can be reached from there
- VVI : If there exist mother vertex (or vertices), then one of the mother vertices is the last finished vertex in DFS. (Or a mother vertex has the maximum finish time in DFS traversal).
- A vertex is said to be finished in DFS if a recursive call for its DFS is over, i.e., all descendants of the vertex have been visited.

- how to find the last finished vertex in dfs
- just perform the dfs and return the last vertex

```java

        for (int i = 0; i < V; i++) { 
                if (visited[i] == false) { 
                        DFSUtil(i, visited); 
                        v = i; 
                }              
        } 

```
- here v is the last finished vertex
