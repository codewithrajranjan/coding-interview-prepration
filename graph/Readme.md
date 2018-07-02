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


## Representation of Graph

- A graph can be represented in different ways. The two most important ways in which graph can be represented is
  - Adjacency Matrix
  - Adjacency List

## Adjacency Matrix

- The graph is represented using two dimensional array
- If the number of node is n then a two dimensional array of size n X n is taken
- Row represents the node itself
- Col represent the other nodes to which the node represented by row can have edges
- Each cell can have an integer value
  - If the value is 0 then there is node edge between two nodes
  - If the value is 1 then there is edge between the two node
  - If the value is other than 1 then there is a edge and the weight of the edge is represented by the value
- If the graph is undirected then for edge A to B we represent matrix[A][B] = 1 and matrix[B][A] = 1





## How facebook find friends using graph

You can find the immediate friends of friends using simple path algorithm. so if you are asked to suggest freinds of a friends then you can simply find the nodes which are at distance of two from the current node



## Web crawling is bascially a graph traversal algorithm
























