### Shortest path in a maze

- one solution is to use back tracking
  - take any one cell and move to the all the possible neighbouring nodes
  - we nee to maintain another maze that will keep track of which cell have been already visited so that there is no cycle
  - when we find the destination node then while backtracking we compare the length of all possible path and return the shortest one
  - then we unmark the node in maze where we keep track of visited node

