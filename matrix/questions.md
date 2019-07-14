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
