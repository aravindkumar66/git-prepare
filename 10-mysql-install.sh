 #!/bin/bash

 dnf list installed mysql
 if [ $? -ne 0 ]
 then
    echo "mysql is not installed, going to install it"
    dnf install -y mysql

    if [ $? -ne 0 ]
    then
        echo "mysql installation failed, please check"
        exit 1
    else
        echo "mysql installation is sucess"
    fi
 else
    echo "mysql is already installed, nothind to do"
 fi