* when we want to process a large file then traditionally we process it from top to bottom and this takes long time
* in mapReduce we break down the file into smaller blocks and mapReduce processes that blocks on differnt nodes so we are pocesiing the blocks of same file parallely. this takes less time and so it is fast`
