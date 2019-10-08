* machine learing is very easy in spark
* contains algorithms and utilities


# spark machine learning packages
* spark.mllib - original api built on RDDs
* saprk.ml - new higher level api built on dataframes ( spark SQL ) and pipelines


# special data types
* Local vector
* label point



# Typical ML workflow in spark
* Load data in RDD
* Transform RDD
    * Filtering features 
    * String to floats
    * Indicator varibles
    * Centering and scaling

* Converts to Labeled point and create DataFrame(label, features)
* split training and testing
* create model
* perform predictions
