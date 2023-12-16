#!/bin/bash

ID=$(id -u)

VALIDATE() {
if [ $? -ne 0 ]
    then 
        echo "Error: Not installed"
        exit 1
    else
        echo "Installed...  successfully"
fi
}

if [ $ID -ne 0 ]
    then 
        echo "Error: you are not a root user"
        exit 1
    else
        echo "You are a root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE