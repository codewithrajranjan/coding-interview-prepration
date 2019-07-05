### What is a Mother Vertex?
A mother vertex in a graph G = (V,E) is a vertex v such that all other vertices in G can be reached by a path from v.



> Solution 1

- the first way loop over each node and perform either bfs of dfs by taking each node as source
- if after performing the bfs or dfs from node1 and we see that all the vertex has been visited then we will break the loop.
- if all the vertex has not been visited then we will restart bfs or dfs taking node2 as the source node
- the complexity is O(V(E+V))



> Solution 2
