  #!/bin/bash
  USERID=$(id -u)

  validate()
    {
        if [ $1 -ne 0 ]
        then
            echo "$2 is ... FAILED"
            exit 1
        else
            echo "$2 is ... SUCESS" 
        fi    

    }

  if [ $USERID -ne 0 ]
  then 
    echo "please run this script with root prvilizes"
    exit 1
  fi

  dnf list installed mysql

  if [ $? -ne 0 ]
 then
    echo "mysql is not installed, going to install it"
    dnf install -y mysql

    validate $? "installing mysql"
 else
    echo "mysql is already installed, nothind to do"
 fi  

