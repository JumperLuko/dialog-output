# Get Dialog Output

Is it difficult to return dialog values? This script makes it much simpler for you

1. Have the dialog package installed

2. Run this script and the dialog parameters after, and `source` or `.` before

## Exemples

`source ./dialog-output.sh --msgbox "test test" 6 20`

`. ./dialog-output.sh --clear --backtitle "$backtitle" --title "Some Title" --menu "My  fancy menu" 50 15 4 "one" "option 1" "two" "option 2"`

## Variables with useful results
`$DIALOG_RESULT` -> Dialog result 

`$DIALOG_CODE` -> Dialog code 

`$DIALOG_CODE_NAME` -> Dialog code name

## Echo results
Uncomment to get results in terminal, or set these variables elsewhere

`DIALOG_ECHO_CODE=yes` -> To show the error code on execution on this run, in case it generates an error

`DIALOG_ECHO_CODE_FOREVER=yes` -> To show the error code on execution on all runs, in case it generates an error

`DIALOG_ECHO_RESULT=yes` -> To show the result on this run

`DIALOG_ECHO_RESULT_FOREVER=yes` -> To show the result on all runs

## If Dialog is not installed
Maybe dialog is not installed, and in that case you want it to run other code automatically

`DIALOG_NOTFOUND_CODE(){ echo "Example";}` -> Juts put your code in this funcion, and will cover in the absence of dialog

`DIALOG_NOTFOUND_FOREVER=yes` -> To run this funcion on every run, if dialog is not installed 