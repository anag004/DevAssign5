#!/bin/bash
# Retrieves the name of a user given their uname and a passwords.txt file
# bash uname.sh <uname> <passwordFile>

if [[ !( $# -eq 2 ) ]]
then
	exit 1
fi

# Get the line containing the username
LINE=$( cat $1 | grep $2 )

# Exit if no such line is found
if [[ !( $LINE ) ]]
then 
	echo "Invalid username"
fi

OUT=$( echo $LINE | cut -d':' -f5 )

if [[ !( $OUT ) ]]
then 
	exit 1
fi

echo $OUT