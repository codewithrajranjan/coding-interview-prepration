* when we add the user using useradd command then the newely created user is in locked state
* so we need to set the new password for it and for that we use the passwd username command

* when we add a new user to the linux system then a default entry goes to the /etc/passwd file

alepo:x:504:504:tecmint:/home/tecmint:/bin/bash

The above entry contains a set of seven colon-separated fields, each field has it’s own meaning. Let’s see what are these fields:

Username: User login name used to login into system. It should be between 1 to 32 charcters long.
Password: User password (or x character) stored in /etc/shadow file in encrypted format.
User ID (UID): Every user must have a User ID (UID) User Identification Number. By default UID 0 is reserved for root user and UID’s ranging from 1-99 are reserved for other predefined accounts. Further UID’s ranging from 100-999 are reserved for system accounts and groups.
Group ID (GID): The primary Group ID (GID) Group Identification Number stored in /etc/group file.
User Info: This field is optional and allow you to define extra information about the user. For example, user full name. This field is filled by ‘finger’ command.
Home Directory: The absolute location of user’s home directory.
Shell: The absolute location of a user’s shell i.e. /bin/bash.
