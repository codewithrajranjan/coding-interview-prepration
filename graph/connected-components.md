## Connected components

- connected components are subgraph in the super graph



## Connected Graph

- connected graph says that if you take any vertex as source then if you can reach to all the vertex of the graph from that particular source then it is called as connected graph
- if the graph is not connected then it can be broken down into connected components



## Connected components in undirected graph

- since in undirected graph we have edges from vertex a to b and then from b to a
- this makes the task easy to find the connected components in undirected graph
- There will be more than one connected components in a undirected graph if the graph is disconnected e.g from this pic https://www.geeksforgeeks.org/connected-components-in-an-undirected-graph/
- To find the number of connected components is simple


## Algo to find number of connected components in undirected graph

- start bfs or dfs from any vertex
- if bfs or dfs ends then check that all the vertex has been visited or not by checking the value of visited array which is created during bfs or dfs algorithm
- if all the vertex has been visited then it meand that only one connected componented is there or we can say that every vertex can reach to every other vertex
- if all the vertex has not been visited then start bfs or dfs from the first unvisited vertex that is encountered and increase the count of connected components. Repeat this process until all the vertex has been visited








## Strongly connected Components

- this is a concept used for directed graph so in directed graph we don't have connected components we have strongly connected componentes
- decomposition of directed graph into strongly connected components is classical application of dfs 
- the problem of finding strongly connected components of directed graph is at the heart of many graph application















