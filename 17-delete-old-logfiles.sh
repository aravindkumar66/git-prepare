#!/bin/bash


Source=/home/ec2-user/logs


if [ -d $Source ]
then 
    echo "$Source directory is exisits"
    
else
    echo "$Source directory is not exists"
    exit 1
fi
FILES=$(find ${Source} -name "*.log" -mtime +30)
echo "fiels: $FILES"

while read -r FILE 
do
    echo "deleting files are: $FILE"
    rm -rf $FILE

done <<< $FILES

# if [ -d $SOURCE_DIR ]
# then
#     echo -e "$SOURCE_DIR $G Exists $N"
# else
#     echo -e "$SOURCE_DIR $R does not exist $N"
#     exit 1
# fi

# FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +14)
# echo "Files: $FILES"