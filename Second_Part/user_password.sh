#!/bin/bash
#
# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed.



#### STEPS TO FOLLOW FOR QUESTION

# 1- ask a username
# 2- comment
# 3- create the user
# 4- create a password
# 5- renew the password


# Make sure the script is being executed with superuser privileges][]

# Get the username (login).

if [[$UID -ne 0]]
then 
   echo 'Plerase run this script with sudop or as root.'
    exit 1
fi 
# Add a comment for the user.



# Get the password.



# Create the account.


# Check to see if the useradd command succeeded.


# Set the password.



# Check to see if the passwd command succeeded.



# Force password change on first login.



# Display the username, password, and the host where the user was created.



