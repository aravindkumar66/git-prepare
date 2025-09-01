 #!/bin/bash

 failuer{
    echo "failed at: $1 $2"
 }
 trap 'failure "${LINENO}" "$BASH_COMMAND"' ERR
# set -ex #exit automatically if we get error #set -ex for debug
 echo "Hello World"
 echoo "Welcome to java city"
 echo "learning java language error in above"