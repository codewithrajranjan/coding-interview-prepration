## Find the merge points of two linked list

There are  multiple solutions for this
- HashMap Solution
    - take a hashmap 
    - traverse first linked list and put the data in the hashmap
    - traverse the second linked list and search for the current element in the hash map. The first match is the answer.

- Difference of the two linked list
    - take the diffence of two linked list
    - traverse the smaller linked list by the difference.
    - then move both the linked list by one unit
    - the first matching data value is the merge point.