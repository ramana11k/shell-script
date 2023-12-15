#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then    
        echo "Error: Please connect as Root uesr to install mysql"
    else    
        echo "You are a root user"
fi

yum install mysql -y