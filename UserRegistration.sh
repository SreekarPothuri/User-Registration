#!/bin/bash

echo "--------WELCOME TO USER REGISTRATION PROCESS---------"

function FirstName()
{
	fnamePattern="^[A-Z]([a-z]{2,})$"

	if [[ $1 =~ $fnamePattern ]]
	then
		echo "Valid First Name"
	else
		echo "Invalid First Name"
	fi
}

read -p " First Name : " fname
FirstName $fname
