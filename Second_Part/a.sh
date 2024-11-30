# Make sure the script is being executed with superuser privileges.


if [[ $UID -ne 0 ]]
then
    echo 'Please run this script with sudo or as root.'
    exit 5
fi


# Get the username (login).

read -p "Enter a username : " USER_NAME

# Add a comment for the user.

read -p "Write the department here : " COMMENT

# Get the password.

read -sp "Enter your password : " PASSWORD 

# Create the account.

useradd -c $COMMENT -m $USER_NAME

# Check to see if the useradd command succeeded.

if [[ $? -ne 0 ]]
then
    echo 'This username is not successfull'
    exit 1
fi

# Set the password.

echo $PASSWORD | passwd --stdin $USER_NAME

# Check to see if the passwd command succeeded.

if [[ $? -ne 0 ]]
then
    echo "This password couldn't be set"
    exit 1
fi

# Force password change on first login.

passwd -e $USER_NAME

# Display the username, password, and the host where the user was created.

echo $USER_NAME

echo $PASSWORD 