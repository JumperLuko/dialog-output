#!/bin/bash

dialog-output(){
    dialog --clear --backtitle "$backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
}

function render_menu(){
  exec 3>&1
  selection=$(dialog-output 2>&1 1>&3)
  exit_code=$?
  exec 3>&-
}

render_menu 
echo $exit_code
echo $selection