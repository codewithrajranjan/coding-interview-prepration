* lazy evaluations means spark will not load or transform data unless an action is performed
    * load file into RDD
    * filter the RDD
    * count the number of elementd  // this is an action so when count is called then the top two steps gets performed
* helps internally optimize operations and resource usage
* easy to writer chaining operations

