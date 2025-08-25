  #!/bin/bash
  USERID = $(id -u)

  validate()
    {
        echo "exit status: $1"
    }

  if [ $USERID -ne 0 ]
  then 
    echo "please run this script with root prvilizes"
    exit 1
  fi

  dnf list installed mysql

  validate $?

