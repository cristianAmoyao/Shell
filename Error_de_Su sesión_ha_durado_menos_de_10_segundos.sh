#!/bin/bash

clear
if [ $(id -u) != "0" ] || [ ! $SUDO_USER ]; then
	echo "Por favor, ejecuta éste script con sudo. :)"
	exit 1
fi
echo -n "\n_________licencia GPL 3.0_________"
HOME=$(cat /etc/passwd | grep $SUDO_USER | awk -F: '{print $6}')
chown $SUDO_USER $HOME/.ICEauthority && chmod 600 $HOME/.ICEauthority
