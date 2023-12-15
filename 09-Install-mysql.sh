#!/bin/bash

ID=$(id -u)

if [ &ID -ne 0 ]
    then
        echo "Error: You are not a root user, please connect as a root user
               use the command: sudo su - to change to root user"
    else
        echo "You are a root user"
fi

yum install mysql -y