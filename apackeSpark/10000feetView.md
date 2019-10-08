# Master Node
    * node here is referred to VM, or server
    * Master node contains the driver program
    * spark context is created here
        * spark context is the gateway to all spark fucntionality






# Cluster Manager
    * spark context works with the cluster manager in order to manage various jobs
    * a job is split into tasks
    * and these tasks are distributed to the worker node





# Worker Node
    * worker node are the slave node
    * it consistd of task
    * task works on partioned RDD
    * so increasing the number of nodes will allow to get the job done faster
    * more the memory the better the cache we are going to have




