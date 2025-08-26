 #!/bin/bash

 USERID=$(id -u)
 
 validate() {

    if [ $1 -ne 0 ]
    then
        echo "$2..... is failed"
        exit 1
    else
        echo "$2.... is sucess"

    fi    
 }

 if [ $USERID -ne 0 ]
 then
    echo "please run this script with root previlizes"
    exit 1
 fi

 dnf list installed mysql 

 if [ $? -ne 0 ]
 then
    echo "mysql not installed, go and install"
    dnf install -y mysql

    validate $? mysql
 else 
    echo "mysql is already installed, nothing to do"
 fi

 