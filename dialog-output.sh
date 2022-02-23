#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "$backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
# }

: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}
# HEIGHT=0
# WIDTH=0

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog-output 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# echo $DIALOG_CODE
# echo $DIALOG_RESULT

# Act on the exit status
case $DIALOG_CODE in
  $DIALOG_CANCEL)
    echo "Cancel pressed.";;
  $DIALOG_HELP)
    echo "Help pressed.";;
  $DIALOG_EXTRA)
    echo "Extra button pressed.";;
  $DIALOG_ITEM_HELP)
    echo "Item-help button pressed.";;
  $DIALOG_ESC)
    if test -n "$result" ; then
      echo "$result"
    else
      echo "ESC pressed."
    fi
    ;;
esac