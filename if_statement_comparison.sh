#! /bin/bash

echo "Insert a number :"
read var

if (($var > 10))
then
   echo "Then your number is higher than 10"
elif (($var < 10))
then
   echo "Your number is smaller than 10"
elif (($var == 10))
then
  echo "your number is 10!"
fi

read -p  "Enter the username : " username

read -sp "Enter password : " password

echo " "

echo "Your username  is :" $username

echo "Your password is :" $password

echo "Testing project"

test_username="root"
test_paswword="123456789"

if [[ $username -eq $test_username ]]
then 
   echo "Username is correct!"
   if [ $password -eq "123456789" ]
   then
      echo "Password correct!"
      echo "Loging succesfuly"
   fi
else
   echo "Username or password not valid!"
fi
