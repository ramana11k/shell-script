#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then 
        echo "Error: you are not a root user"
        exit 1
    else
        echo "You are a root user"
fi

yum install mysql -y

    if [ $? -ne 0 ]
        then    
            echo "Error: Mysql not installed"
            exit 1
        else    
            echo "Mysql is installed successfully"
    fi
