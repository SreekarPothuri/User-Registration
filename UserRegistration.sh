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

function LastName()
{
	LnamePattern="^[A-Z]([a-z]{2,})$"

	if [[ $1 =~ $LnamePattern ]]
	then
		echo "Valid Last Name"
	else
		echo "Invalid Last Name"
	fi
}

read -p " First Name : " fname
FirstName $fname

read -p "Last Name : " Lname
LastName $Lname
