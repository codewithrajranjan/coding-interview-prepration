## Implement Queue using two stacks

- take two stack s1 and s2
- for enqueue operation
    - push to s1
- for dequeue or peek operation
    - if s2 is not empty then pop or peek from s2
    - if s2 is empty then pop s1 and push to s2 until s1 is empty 
        - then pop or peek