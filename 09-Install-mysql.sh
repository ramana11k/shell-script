#!/bin/bash

ID=$(id -u)

R="e[31m"
G="e[32m"
N="e[0m"

if [ $ID -ne 0 ]
    then    
        echo "$R Error: $N Please connect as Root uesr to install mysql"
        exit 1
    else    
        echo "You are a root user"
fi

yum install mysql -y