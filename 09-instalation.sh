 #!/bin/bash

#  USER=$(id -u)

#  if [ $USER -ne 0 ]

#  then 
#     echo "please run this script with root prvilizes"
#     exit 1

#  fi
 
 dnf list installed mysql

 if [ $? -ne 0 ]

 then 
   echo "git is not installed, going to install git"

   dnf install mysql  -y

 else
   echo "git is installed"
 fi
