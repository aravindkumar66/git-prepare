#!/bin/bash

Source_Dir=$s1
Dest_Dir=$s2
Days=${3:-14}

USAGE(){

    echo "USAGE: 18-backup.sh <source> <destination> <days(optional)>"
} 
if [ $# -lt 2 ] 
then
    USAGE
fi



# if [ $# -lt 2]
# then
#     echo "Source_Dir and Dest_Dir are exist"
# else
#     cho "Source_Dir and Dest_Dir are does not exist"
# fi
