#!/bin/bash

USERID=$(id -u)

echo "User is id $USERID"

if [ $USERID -ne 0 ]
then
echo "Please run script with root previliges"
exit 1
fi

systemctl status git

if [ $? -ne 0 ]
then
echo "Git is not installed, install the git"
apt install git -y
if [ $? -ne 0 ]
then
echo "Git installation is not successful, please check it"
else
echo "Git is successfully installed"
fi
else
echo "Git is alredy installed nothing to do"
fi
