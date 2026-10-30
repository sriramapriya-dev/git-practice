#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"  

if [ $USERID -ne 0 ]
then
  echo -e "${R}Please run this script as root user.${N}"
  exit 1
fi

dnf list installed mysql &>/dev/null

if [ $? -eq 0 ]
then
  echo -e "${G}MySQL is already installed.${N}"
else
  dnf install mysql -y

  if [ $? -eq 0 ]
  then
    echo -e "${G}MySQL installed successfully.${N}"
  else
    echo -e "${R}MySQL installation failed.${N}"
    exit 1
  fi
fi
#[ ec2-user@ip-172-31-30-242 ~/git-practice ]$ sudo sh 07-installation.sh
#MySQL is already installed.
