#!/bin/bash

#! Esteja no caminho do arquivo e execute este script
if [ -e "/usr/bin/dialog" ] && [ -e "dialog-output.sh" ]; then
    dialog --backtitle "dialog-output installer" --yesno "\nDo you want to install dialog-output?!" 7 50
    if [ "$?" == 0 ]; then
        sudo cp dialog-output.sh /usr/bin/dialog-ouput
        sudo chmod +x /usr/bin/dialog-ouput
        dialog --backtitle "dialog-output installer" --title "Sucess!" --msgbox "\nDialog-output is installed!" 7 40
    else
        dialog --backtitle "dialog-output installer" --title "Cancelled!" --msgbox "\nDialog-output installation was canceled!" 7 50
    fi
elif [ -e "/usr/bin/dialog" ] && ! [ -e "dialog-output.sh" ]; then
    dialog --backtitle "dialog-output installer" --title "Cancelled!" --msgbox "\nFailed to find dialog-output.sh" 7 40
elif ! [ -e "dialog-output.sh" ]; then
    echo -e "Failed to find dialog-output.sh"
else
    echo -e "Failed to install dialog-output\ndialog is not installed"
fi