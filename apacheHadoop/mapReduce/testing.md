* we can simply test our mapper and reducer without running the actual hadoop job
* we will pipe the data which will provide it as standard input

car test.txt | ./mapper.py | sort | reducer.py
