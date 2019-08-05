> ## Disjoint set

- In computer science, a disjoint-set data structure (also called a union–find data structure or merge–find set) is a data structure that tracks a set of elements partitioned into a number of disjoint (non-overlapping) subsets.
- It provides near-constant-time operations (bounded by the inverse Ackermann function) to add new sets, to merge existing sets, and to determine whether elements are in the same set.
- In addition to many other uses (see the Applications section), disjoint-sets play a key role in Kruskal's algorithm for finding the minimum spanning tree of a graph.
- A union-find algorithm is an algorithm that performs two useful operations on such a data structure:
  - Find: Determine which subset a particular element is in. This can be used for determining if two elements are in the same subset.
  - Union: Join two subsets into a single subset.

- Disjoint set means when two sets don't have anything common in between them then it is called as disjoint set
  - let s1 = { 1,2,3,4 }
  - let s2 = { 5,6,7,8 }
  - if we take s1 union s2 then we get output as nothing because nothing is common



> ## Operation on disjoint set

- Find : determine that the element belongs to which set. This determines that the element is member of which set
- Union : joining of two disjoint set is called as union



> ## Disjoint set implementation using hashmap

we will define following methods in our disjoint set class

- makeset(allElements) : this will be called first time to make n disjoint set
- find(x) : this will find the root of the set which means the topmost parent of the element that we are finding
- union(a,b) : this will find the set in which a and b are belonging and then join those two sets to make one set. This will make a single topmost parent of both the set

- makeset will take the entire elements and make individual disjoint set
  - in hash map the the key will denote the current element and the value will denote the parent of that element
  - initially all the key will will have parent equal to key itself as that will make the n different disjoint set


```java
	// class to represent a disjoint set
	class disjointset
	{
	    private map<integer, integer> parent = new hashmap();

	    // perform makeset operation
	    private void makeset(int[] universe){

		    // create n disjoint sets (one for each item)
		    for (int i : universe){
			// we are putting the value as the element itself to create n different disjoint set
			parent.put(i, i);
		    }
	    }
         }
```

- find will help us to find the topmost parent of the element in the set
  - After the makeset operation has been performed then all the element will have itself as parent

```java
	       // Find the root of the set in which element k belongs
	       private int Find(int k){
		    // if k is root
		    if (parent.get(k) == k)
			    return k;
		    // performing recursion
		    // recur for parent until we find root
		    return Find(parent.get(k));
	    	}
```

- union(a,b) : 
  - we will find in which set the element a belongs. which means we are finding the parent of a
  - we will find in which set the element b belongs. which menas we are finding the parent of b
  - if both belongs to different set which means the parent element of both the element are different then we will make update the parent of one to another

```java

// Perform Union of two subsets
	private void Union(int a, int b)
	{
		// find root of the sets in which elements
		// x and y belongs
		int x = Find(a);
		int y = Find(b);

		parent.put(x, y);
	}	


```

- while perfroming the union we are not taking into account about the rank of the tree. we are randomly making the union operation. This will make the tree highly unbalanced 
- we can improve the union operation by taking into account the rank of individual sets and attaching smaller set into bigger set during the the union operation
  - for this we need to keep track to the rank of parent 
  - for this in hashmap we can say that a negative value denotes a parent and the mod of that negative value is the rank





> ## Union find algorithm can be used to find cycle in an unidirected graph



