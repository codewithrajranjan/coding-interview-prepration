> ## Given a boolean 2D matrix which is row-wise sorted. Need to print the line which contains maximum no of 1’s.

#### Solution 1 O(n^2)

- for each row count the number of 1 and maintating two variable one for maximumNumber of 1 and other the row that conatins the maximum number of 1
- we update the variable if it is required

- but this has worst case complexity of O(n^2)


#### Solution 2 O(n^2)

- we will fix the column and search every row.
  - so first we will take column 0 and then row from 0 to n-1
  - then we will take column 1 and then row from 0 to n-1

- whenever we get the value as 1 then that particular row will have maximum 1



#### solution 3 : O(mLogn)

- in this we perform the binary search on each row for find the index of first instance of 1






> ##  count all possible path from top left to bottom right in a matrix. The constraint is that you can only move in right or bottom direction

#### Solution 1 : Using the dfs of graph

- In this method we will just do the dfs of the matrix and maintain a count variable that will get increased whenever we find the destination cell
- The most important thing to note here that during bfs we need to mark the visited node as unvisited when the traversal of that cell is completed because the question says that we need to find all the possible path and not the shortest path
- the problem of this solution is the time complexity. it is time taking

#### Solution 2 : using dynamic programming
