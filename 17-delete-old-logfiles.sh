#!/bin/bash


Source=/home/ec2-user/logs


if [ -d $Source ]
then 
    echo "$Source files is exisits"
    
else
    echo "$Source file is not exists"
    exit 1
fi
FILES=$(find ${Source} -name "*.log" -mtime +30)
echo "fiels: $FILES"

# if [ -d $SOURCE_DIR ]
# then
#     echo -e "$SOURCE_DIR $G Exists $N"
# else
#     echo -e "$SOURCE_DIR $R does not exist $N"
#     exit 1
# fi

# FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +14)
# echo "Files: $FILES"