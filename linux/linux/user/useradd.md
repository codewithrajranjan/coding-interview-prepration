# useradd 

this command is used to add new user to the linux system
when we run useradd command it performs these actions
    * it edits /etc/passwd, /etc/shadow, /etc/group, /etc/gshadow files for newly created user
    * created and populates a home directory for the new user
    * sets permission and ownership for the home directory



## creating a new user
useradd alepo

when we add a user with this command then the user is creted in the locked state and we are not able to access the user
so we need to unlock user with 
passwd alepo command to set a new password for the user



----------------
* so when we create a new user then a default ev=ntry goes to the /etc/passwd file




# when we create user then it is directly created in the home directoty of the linux system but if we want to create the user directory somewhere else then we need to create the user using -d option
useradd -d path_to_directory username


## other options while creating the user
-d for specifying ceratin directory
-u for specifying a specific user id
-g for specific group
-G for adding user to multiple groups and goups are given in comma separated
-e create a user with an expiary date so date is specified in yyyy-mm-dd format // this is for accoutn epiary date
-f for password expiary date so -f 45 says password will expire in 45 days
-s for adding shell
