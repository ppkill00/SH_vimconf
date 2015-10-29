#!/bin/sh
# Maker : wulf
# Description : this is autoconfig for my env


sudo add-apt-repository ppa:numix/ppa
sudo aptitude update

sudo aptitude install php5 mysql-server mysql-client php5-mysql vsftpd apache2 nmap chromium-browser terminator ibus-hangul gir1.2-gtop-2.0 vim ssh numix-gtk-theme numix-icon-theme numix-icon-theme-circle gnome-tweak-tool sysv-rc-conf git-core python-pip

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

