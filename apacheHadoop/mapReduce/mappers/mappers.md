* mappers are small programs that deal with small amount of data
* mappers work in parallel
* mappers provide output that is called intermediate record
* these intermediate records are in the form of key value pair
* once the mappers have done their work then shuffle and sort occurs
* each mapper process a portion of input data and each one will be given a line


* mappers work on the data present on that node only
* it works on the data present on that node itself and not on the other node
