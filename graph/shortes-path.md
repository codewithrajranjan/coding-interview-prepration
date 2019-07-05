## How to find the shortest path using bfs when the weight of edges are x, 2x or 3x

- when the graph contains weight of edges in above fashion then we can create our own edges and so that in overall graph we have weight of x only
- to solve this lets assume that in original graph it has n nodes. so the new graph that we will make will have Nx3 nodes. Here we have multiplied N with 3 because 3x is the largest weight. Had it been 5x then the new graph that we would have made will be 5xN
- now we need to add new nodes
  - if the weight is 2x then we will create one node that will be equal to v+N where v is the current vertex and N is the original number of nodes
  - if the weight of edge is 3x then we will create two node v+N and v+2N. the edges should be attached carefully between previous nodes and the new node


See example quesiton : https://www.techiedelight.com/least-cost-path-weighted-digraph-using-bfs/
