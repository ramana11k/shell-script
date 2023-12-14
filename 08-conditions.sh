#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo "The given no: $NUMBER is greater than 100"
else
    echo "The given no: $NUMBER is not greaer than 100"
fi