#!/bin/ksh

file="/mnt/d/kata.txt" #my local directory to store kata.txt
while IFS= read line
do

        echo -n "That words start with" \"${line:2:1}\" | tr '[a-z]' '[A-Z]';
        echo " or "\"${line:2:1}\" | tr '[A-Z]' '[a-z]';

if [[ "$line" -gt 5 ]] ; then
    echo ""
    exit 1
else
    echo "All the words longer than 5 characters"
    exit 0
fi
done <"$file"
