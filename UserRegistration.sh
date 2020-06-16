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

function email()
{
	emailPattern="^[A-Za-z0-9]+([._%+-][0-9a-zA-Z]+)*@[A-Za-z0-9]+.[A-Za-z]{2,4}([.][a-zA-Z]{1,3})*$"

	if [[ $1 =~ $emailPattern ]]
	then
		echo "Valid email address"
	else
   		echo "Invalid email address"
	fi
}

function MobileNum()
{
	MobileNumPattern="^[0-9]{1,3}[[:space:]][0-9]{10}$"

	if [[ $1 =~ $MobileNumPattern ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Invalid Mobile Number"
   	fi
}

function Password()
{
	PwdPattern1="^([0-9a-zA-Z@#!]){8,}$"

	if [[ $1 =~ $PwdPattern1 ]]
	then
		echo "Rule1 matched"
	else
		echo "Rule1 not matched"
	fi
}

read -p " First Name : " fname
FirstName $fname

echo -e "\n"

read -p "Last Name : " Lname
LastName $Lname

echo -e "\n"

read -p "Email Id : " EmailId
email $EmailId

echo -e "\n"

read -p "Mobile Number : " MobileNo
MobileNum $MobileNo

echo -e "\n"

read -p "Password : " Pwd
Password $Pwd
