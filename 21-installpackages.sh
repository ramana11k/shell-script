#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then    
        echo "Error: you are not root user"
        exit 1
    else
        echo "You are root user and installation starts now..."
fi

yum install mysql -y

if [$? -ne 0 ]
    then 
        echo "Error: installation has failed"
        exit 1
    else   
        echo "MySQL has installed successfully"
fi
