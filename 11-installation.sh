#!/bin/bash

USERID=$(id -u)

echo "User is id $USERID"

if [ $USERID -ne = 0 ]
then
echo "Please run script with root previliges"
exit 1
fi

apt install nginx