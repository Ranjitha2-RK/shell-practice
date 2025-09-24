#!bin/bash

USERID=$(id -u)
R="\e[31m]"
G="\e[32m]"
Y="\e[33m]"
N="\e[0m]"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p "$LOGS_FOLDER"
echo "Script started executed at: $(date)"

if [ $USERID -ne 0 ]; then
  echo "ERROR:: Please run this script with root privelege"
  exit 1 # failure is other than 0
fi

VALIDATE(){ #functions receive input through args just like shell script args
  if [ $1 -ne 0 ]; then
    echo -e "Installing $2 ... $R is failre $N"
    exit 1
  else
    echo -e "Installing $2 ... $G success"
  fi
}

dnf list installed mysql &>>$LOGS_FILE
#Install if it is not found
if [ $? -ne 0 ]; then
  dnf install mysql -y &>>$LOGS_FILE
  VALIDATE $? "MySQL"
else
  echo -e "MySQL already exist ... $Y SKIIPING $N"
fi

dnf list installed nginx &>>$LOGS_FILE
if [ $? -ne 0 ]; then
  dnf install nginx -y &>>$LOGS_FILE
  VALIDATE $? "Nginx"
else
  echo -e "Nginx already exist ... $Y SKIIPING $N"
fi

dnf list installed python3 &>>$LOGS_FILE
if [ $? -ne 0 ]; then
  dnf install python3 -y &>>$LOGS_FILE
  VALIDATE $? "python3"
else
  echo -e "python3 already exist ... $Y SKIIPING $N"
fi