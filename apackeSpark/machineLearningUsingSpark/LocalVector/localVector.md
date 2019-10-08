* a vector of double values
* Dense vector
    * if most of the values are non zero then it is called dense vector
    * (1.0, 3.0, 4.5)
* sparse vector
    * if most of the values are zero then it is called sparse vector
    * when the vector is sparse then we don't need to store them in simple way because most of the values are zero so it will unnecessaraly take more space
    * we will use an efficient way to store that
    * original ( 1.0,0.0,0.0,0.0,0.0,2.0,0.0)
    * better way of representation (5,(0,3),(1.0,2.0)) // so here first bracket says the position of non zero values and the second bracket lists down the actual non zero values
* if the values are string then we need to convert them into double values
