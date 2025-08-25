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

  dnf list installed git

  validate $? "Listing GIT"

