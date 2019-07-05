## Floyd Warshall Algorithm

- Dijkstra or Bellman ford algorithm for finding the shortest path is for single source only
- If we want to find all pairs shortest path i.e shortest path between all pairs of vertices in the graph then we have to use Floyd warshall algo
- we can achive it by applying Dijkstra algo on each vertex which will have a complexity of O(n^3)
- Time complexity of floyd algo is also O(n^3) but floyd algo is much simpler and faster if graph is dense. Negative weight is also allowed in floyd algo
- the only restriction is that graph should not have negative cycle
