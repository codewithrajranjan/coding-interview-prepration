# Topological Sorting

- applied on directed acyclic graph




## Application of topological sorting

- Build system : when we build our software then the project depend on different libraries and each library may depend on other library. so we need to build in such a manner that for any particular module all its libraries must have been build. so we see here that a graph dependency has been built and for that we need topological sort
- apt-get or yum 
- task scheduling : Topological sort is helpful in scheduling inter dependent task
- pre-requisite problems : like university structure that to take some course we have complete certain set of courses before. this can be achieved by applying topological sort on all the available courses