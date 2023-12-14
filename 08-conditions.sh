#!/bin/bash

NUMBER=$1

if [$NUMBER -gt 100]
then
    echo "The given $NUMBER is greater than 100"
else
    echo "The given $NUMBER is not greaer than 100"
fi