#!/bin/bash

ID=$(id -u)

VALIDATE() {
if [ $? -ne 0 ]
    then 
        echo "Error: MySql is not installed"
        exit 1
    else
        echo "Mysql is installed successfully"
fi
}

if [ $ID -ne 0 ]
    then    
        echo "Error: Please connect as Root uesr to install mysql"
        exit 1
    else    
        echo "You are a root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE
