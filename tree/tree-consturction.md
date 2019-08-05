> ## Tree Construction using array

- when constructing tree using array. Then two cases can arise that the root is either starting from 0 or 1

#### Case 1 : when root is starting from 0 then

- left child will be at **2*i + 1**
- right child is at **2*i + 2**
- parent is at (i-1)/2


#### Case 2 : when root is starting from 1 then

- left child will be at **2*i**
- right child will be at **2*i+1**
- parent is at i/2



