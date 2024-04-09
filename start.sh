#!/bin/bash

SCRIPT_DIR=$( dirname -- "$0"; )

DATA_FILE="$SCRIPT_DIR/time_taken.txt"

if ! test -f "$DATA_FILE"; then
    echo "start_date,time_taken_in_secs" > $DATA_FILE
fi

clear

./random.sh -l rand -t problem-solving -d easy

read -p "Press any keys to start"

START=$(date +%s)

echo "Kata Started. Please any keys to stop"
read

END=$(date +%s)
TOTAL_SECS=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

echo "$START_FORMATTED,$TOTAL_SECS" >> $DATA_FILE

MINUTES=$(( TOTAL_SECS/60 ))
SECS=$(( TOTAL_SECS%60 ))

echo "Code Kata completed in $MINUTES minutes, $SECS seconds"
