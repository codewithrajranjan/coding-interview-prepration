# autoWatch
* this accepts a boolean value either true or false
* when we have set the autoWatch as true then all the file that we have loaded using file configuration then if anything changes in it then the karma will restart



# browser : []
* this is an array and accepts the values of the browser like
* chrome 
* Firefox
* Opera


# colors : true/false
* enable or disable colours in the output


# exclude : []
* this array list the file patterns that are not loaded 


# files : []
* comma separated value of the file or file patters that are included


# frameworks : []
* lis of frameworks that you want to use like jasmine, mocha


# hostname : String 
* this is the host name used to capture the browser

# port : Number
* the port at which the webserver will be listening

# protocol : 'http/https'
* protocol used by webserver 


# restartOnFileChange : true/false
* when the files that karma is serving gets chandeg then it will first complete the current test which is under run and then will again restart the server
* to restart the server on file change we make this value as true

