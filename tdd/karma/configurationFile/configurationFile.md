* Karma defines all it configuration in a configuration file which is passed as a parameter to the karma cli

* so we make the configuration file as karma.conf.js

* the configuration file contains a module.exort statment which exports a function and this function accepts a config object

```
module.exports=function(config){
    config.set({}); // this object that is passes inside the config.set contains the whole configuration        for testing setup
}
```
