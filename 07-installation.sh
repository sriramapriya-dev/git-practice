#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Please run this script as root user."
  exit 1
fi

dnf list installed mysql &>/dev/null

if [ $? -eq 0 ]
then
  echo "MySQL is already installed."
else
  dnf install mysql -y

  if [ $? -eq 0 ]
  then
    echo "MySQL installed successfully."
  else
    echo "MySQL installation failed."
    exit 1
  fi
fi
