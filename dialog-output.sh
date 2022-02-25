#!/bin/bash

#! Variables with useful results
#! $DIALOG_RESULT
#! $DIALOG_CODE
#! $DIALOG_CODE_NAME

#! Uncomment to get results in terminal, or set these variables elsewhere
# DIALOG_ECHO_CODE=yes
# DIALOG_ECHO_RESULT=yes
# DIALOG_UNSET_ECHO=no
# DIALOG_UNSET_FOREVER_ECHO=no

#! Register outputs
exec 3>&1
DIALOG_RESULT=$(dialog "$@" 2>&1 1>&3)
DIALOG_CODE=$?
exec 3>&-

#! Define each error
: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}

#! echo exit code if DIALOG_ECHO_CODE=yes
echo_code(){
    if [ "$DIALOG_ECHO_CODE" != "" ]; then
        echo "$1"
    fi
}

#! Act on the exit status
case $DIALOG_CODE in
$DIALOG_CANCEL)
    DIALOG_CODE_NAME=DIALOG_CANCEL
    echo_code "Cancel pressed.";;
$DIALOG_HELP)
    DIALOG_CODE_NAME=DIALOG_HELP
    echo_code "Help pressed.";;
$DIALOG_EXTRA)
    DIALOG_CODE_NAME=DIALOG_EXTRA
    echo_code "Extra button pressed.";;
$DIALOG_ITEM_HELP)
    DIALOG_CODE_NAME=DIALOG_ITEM_HELP
    echo_code "Item-help button pressed.";;
$DIALOG_ESC)
    DIALOG_CODE_NAME=DIALOG_ESC
    echo_code "ESC pressed.";;
esac

unset DIALOG_OK DIALOG_CANCEL DIALOG_HELP DIALOG_EXTRA DIALOG_ITEM_HELP DIALOG_ESC

#! echo result if DIALOG_ECHO_RESULT=yes
if [ "$DIALOG_ECHO_RESULT" != "" ]; then
    echo $DIALOG_RESULT
fi

#! unset echo result if not DIALOG_UNSET_ECHO=no
if [ "$DIALOG_UNSET_ECHO" == "" ]; then
    unset DIALOG_ECHO_RESULT DIALOG_ECHO_CODE DIALOG_UNSET_ECHO
fi

#! unset echo result if not DIALOG_UNSET_FOREVER_ECHO=no
if [ "$DIALOG_UNSET_FOREVER_ECHO" == "" ]; then
    unset DIALOG_ECHO_RESULT DIALOG_ECHO_CODE
fi