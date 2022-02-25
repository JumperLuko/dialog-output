#!/bin/bash

# textTest=("$1" "$2" "$#")
# echo "$textTest"

# if [[ -v textTest ]]
# then
#     echo "Variable textTest exists!"
# else
#     echo "Variable textTest does not exist!"
# fi
# while true; do

#     return
# done

# for textTest in "${textTest[@]}"
# do
#   echo "Item: $textTest"
# done

# for i in {1..5}; do
#   if [[ "$i" == '3' ]]; then
#     break
#   fi
#   echo "Number: $i"
# done

i=$(($#-1))
while [ $i -ge 0 ];
do
    echo ${BASH_ARGV[$i]}
    i=$((i-1))
done

#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

function render_menu(){
  exec 3>&1
  DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
  DIALOG_CODE=$?
  exec 3>&-
}
render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
#!/bin/bash

# dialog-output(){
#     dialog --clear --backtitle "Some backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"
#     dialog --msgbox "teste" 6 20
# }

# echo $@

# while true; do
#    read -r -p "Enter a string: " VAR
#    if [[ $VAR =~ ^["--"] ]];then
#       echo "TRUE"
#    else
#       echo "FALSE"
#    fi
# done

# i=$(($#-1))
# while [ $i -ge 0 ];
# do
#    if [[ ${BASH_ARGV[$i]} =~ ^["--"] ]];then
#       echo "TRUE"
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS ${BASH_ARGV[$i]}"
#    else
#       DIALOG_ARGUMENTS="$DIALOG_ARGUMENTS \"${BASH_ARGV[$i]}\""
#    fi
#   i=$((i-1))
# done

# DIALOG_ARGUMENTS="$*"
# echo $DIALOG_ARGUMENTS
# dialog $DIALOG_ARGUMENTS

# echo $2

# dialog-output(){
#   echo $DIALOG_ARGUMENTS
# }
# dialog-output

# DIALOG_ARGUMENTS=$@

# function render_menu(){
#   exec 3>&1
#   DIALOG_RESULT=$(dialog $DIALOG_ARGUMENTS 2>&1 1>&3)
#   DIALOG_CODE=$?
#   exec 3>&-
# }
# render_menu 

# : ${DIALOG_OK=0}
# : ${DIALOG_CANCEL=1}
# : ${DIALOG_HELP=2}
# : ${DIALOG_EXTRA=3}
# : ${DIALOG_ITEM_HELP=4}
# : ${DIALOG_ESC=255}
# # HEIGHT=0
# # WIDTH=0

# # echo $DIALOG_CODE
# echo $DIALOG_RESULT

# # Act on the exit status
# case $DIALOG_CODE in
#   $DIALOG_CANCEL)
#     echo "Cancel pressed.";;
#   $DIALOG_HELP)
#     echo "Help pressed.";;
#   $DIALOG_EXTRA)
#     echo "Extra button pressed.";;
#   $DIALOG_ITEM_HELP)
#     echo "Item-help button pressed.";;
#   $DIALOG_ESC)
#     if test -n "$result" ; then
#       echo "$result"
#     else
#       echo "ESC pressed."
#     fi
#     ;;
# esac
