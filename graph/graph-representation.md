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








## Adjacency list

- this is more efficient way to store graph without wasting much space



## How to represent weighted graph using adjacency list

-






## How facebook find friends using graph

You can find the immediate friends of friends using simple path algorithm. so if you are asked to suggest freinds of a friends then you can simply find the nodes which are at distance of two from the current node



## Web crawling is bascially a graph traversal algorithm
























