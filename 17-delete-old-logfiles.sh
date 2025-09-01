#!/bin/bash


Source= /home/ec2-user/logs


if [ -d $Source ]
then 
    echo "$Source files is exisits"
    
else
    echo "$Source file is not exists"
    exit 1
fi
FILES = $(find ${Source} -name "*.logs" -mtime +30)
echo "fiels: $FILES"