#!/bin/bash
#here we are you going to develope a script for various options on user accounts
echo -e "\n
[ 1 ] for listing all the user accounts name \n
[ 2 ] for counting the number of logged-in user accounts  \n
[ 3 ] for listing the names of currently logged-in users\n
[ 4 ] for checking the groups to which the current user belong \n"

#Now take user input
read userInput

#Now we will use switch cases for various input operations
case $userInput in
    1)
    #syntax lslogins <option[=output field]>
    lslogins -o USER
    ;;
    2)
    #syntax who <option> <user optional>
    #grep used to filter
    who --count | grep users
    ;;
    3)
    #-q option is to count the number of users and print the logged-in users.
    # instead of -q, --count can also be used.
    # -v is used to exclude any pattern
    who -q | grep -v users
    ;;
    4)
    #syntax groups <option> [USERNAME]
    groups
    ;;
    *)
    echo -e "Please Enter Correct Input \n"
    ;;    
esac
