 #!/bin/bash

 USERID=$(id -u)
 R="\e[31m"
 G="\e[32m"
 N="\e[0m"
 
 validate() {

    if [ $1 -ne 0 ]
    then
        echo -e "$2 is...$R FAILED $N"
        exit 1
    else
        echo -e "$2 is... $G SUCCESS $N"
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

  dnf list installed git 

 if [ $? -ne 0 ]
 then
    echo "git not installed, go and install"
    dnf install -y git

    validate $? installing git
 else 
    echo "git is already installed, nothing to do"
 fi

 