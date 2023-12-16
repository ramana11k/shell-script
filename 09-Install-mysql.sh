#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then    
        echo "Error: Please connect as Root uesr to install mysql"
        exit 1
    else    
        echo "You are a root user"
fi

yum install mysqssl -y

if [ $? -ne 0 ]
    then 
        echo "Error: MySql is not installed"
    else
        echo "Mysql is installed successfully"
fi
