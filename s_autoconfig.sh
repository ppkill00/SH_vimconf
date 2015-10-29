#!/bin/sh
# Maker : wulf
# Description : this is autoconfig for my env
 
echo "update and install repository"

sudo aptitude update
sudo aptitude install php5 mysql-server mysql-client php5-mysql vsftpd apache2 nmap vim ssh  sysv-rc-conf git-core python-pip

echo "*=========vimrc setup=========*"
if [ -f /etc/vim/vimrc ]
then
  sudo cp ./vimrc /etc/vim/vimrc
  echo "copy success"
else
  echo "Vim path [default : \"/etc/vim/vimrc\"]"
  read virc
  suco cp ./vimrc $virc
fi
echo "*=========vimrc setup end=========*"


