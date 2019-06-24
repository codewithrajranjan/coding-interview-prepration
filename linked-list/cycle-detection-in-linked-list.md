## Cycle detection in linked list

- keep two pointers slow and fast.
- move slow by one and fast by two.
- start traversing the linked list
  - if both reach to null node then there is no cycle
  - if there is cycle then after some time both slow and fast will point to the same node
