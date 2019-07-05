## Warshall Algorithm

- P(-1) is the adjacency matrik
- if the number of vertex is n then we need to find upto P(n-1) provided the vertex starts from 0
- so P(-1) is the adjacency matrix and then we find P(0) then P(1) and so on
- P(n-1) is the path matrix or transitive closure

- the condition used in the warshall algorithm
- if P(k-1)[i][j] = 1 then P(K)[i][j]=1
- if P(K-1)[i][j] = 0 then see the value of P(K-1)[i][k] and P(k-1)[k][j]
  - if both the values are 1 then the value will be 1
  - if any of the value is 0 then the value will be 0

