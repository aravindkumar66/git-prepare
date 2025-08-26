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

 for package in $@
 do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo "$package is not installed, going to install"
        dnf install $packagesql -y
        validate $? installing $package
    else
        echo "$package is already installed.. nothing to do"
    fi
 done
