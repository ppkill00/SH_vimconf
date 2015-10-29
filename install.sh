#!/bin/sh
# Maker : wulf
# Description : this is autoconfig for my env




echo " _________________________________________________________________________  "
echo "/             ___           __                              ____ _        \ "
echo "|            /   |  __  __ / /_ ____   _____ ____   ____   / __/(_)____ _ | "
echo "|           / /| | / / / // __// __ \ / ___// __ \ / __ \ / /_ / // __ \`/ | "
echo "|          / ___ |/ /_/ // /_ / /_/ // /__ / /_/ // / / // __// // /_/ /  | "
echo "|         /_/  |_|\__,_/ \__/ \____/ \___/ \____//_/ /_//_/  /_/ \__, /   | "
echo "\                                                               /____/    / "
echo " -------------------------------------------------------------------------  "
echo "  \                                                                         "
echo "   \   \_\_    _/_/                                                         "
echo "    \      \__/                                                             "
echo "           (oo)\_______                                                     "
echo "           (__)\       )\/\                                                 "
echo "               ||----w |                                                    "
echo "               ||     ||                                                    "


echo "Select your usage. [Desktop/Server]"
read system
case $system in 
  "server")
    echo "select Server"
    sudo aptitude update
    sudo aptitude install php5 mysql-server mysql-client php5-mysql vsftpd apache2 nmap vim ssh  sysv-rc-conf git-core python-pip
    ;;
  "desktop")
    echo "select Desktop"
    sudo add-apt-repository ppa:numix/ppa
    sudo aptitude update
    sudo aptitude install php5 mysql-server mysql-client php5-mysql vsftpd apache2 nmap chromium-browser terminator ibus-hangul gir1.2-gtop-2.0 vim ssh numix-gtk-theme numix-icon-theme numix-icon-theme-circle gnome-tweak-tool sysv-rc-conf git-core python-pip
    ;;
  *)
    echo "??"
    ;;
esac

#sudo add-apt-repository ppa:numix/ppa
#sudo aptitude update

#sudo aptitude install php5 mysql-server mysql-client php5-mysql vsftpd apache2 nmap chromium-browser terminator ibus-hangul gir1.2-gtop-2.0 vim ssh numix-gtk-theme numix-icon-theme numix-icon-theme-circle gnome-tweak-tool sysv-rc-conf git-core python-pip



echo "*=========  vimrc     setup  =========*"
if [ -f /etc/vim/vimrc ]
then
  sudo cp ./vimrc /etc/vim/vimrc
  echo "copy success"
else
  echo "Vim path [default : \"/etc/vim/vimrc\"]"
  read virc
  suco cp ./vimrc $virc
fi
echo "*=========  vimrc setup end  =========*"
