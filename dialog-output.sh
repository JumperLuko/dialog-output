#!/bin/bash

# HEIGHT=0
# WIDTH=0
DIALOG_ARGUMENTS=("$1" "$2" "$3" "$4")
declare -p DIALOG_ARGUMENTS
# printf '%s\n' $DIALOG_ARGUMENTS

# options=(-j 5 "Hello, World" -B)
# declare -p options
# printf '%s\n' "${options[@]}"

# dialog $1 $2 $3 $4

# exec 3>&1
# DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
# DIALOG_CODE=$?
# exec 3>&-

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#       DIALOG_CODE_NAME=DIALOG_CANCEL
#       echo "Cancel pressed.";;
#   $DIALOG_HELP)
#       DIALOG_CODE_NAME=DIALOG_HELP
#       echo "Help pressed.";;
#   $DIALOG_EXTRA)
#       DIALOG_CODE_NAME=DIALOG_EXTRA
#       echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#       DIALOG_CODE_NAME=DIALOG_ITEM_HELP
#       echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#       DIALOG_CODE_NAME=DIALOG_ESC
#       echo "ESC pressed.";;
# esac

# unset DIALOG_OK DIALOG_CANCEL DIALOG_HELP DIALOG_EXTRA DIALOG_ITEM_HELP DIALOG_ESC
