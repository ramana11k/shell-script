#!/bin/bash

ID=$(id -u)


VALIDATE() {
if [ $1 -ne 0 ]
    then 
        echo "Error: $2 has FAILED"
        exit 1
    else   
        echo "$2 has SUCCESS"
fi
}

if [ $ID -ne 0 ]
    then    
        echo "Error: you are not root user"
        exit 1
    else
        echo "You are root user and installation starts now..."
fi

yum install mysql -y

VALIDATE $? "Mysql Installation"

yum install gittt -y

VALIDATE $? "GIT Installation"