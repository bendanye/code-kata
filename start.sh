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
total_secs=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

echo "$START_FORMATTED,$total_secs" >> $DATA_FILE

minutes=$(( total_secs/60 ))
secs=$(( total_secs%60 ))

echo "Code Kata completed in $minutes minutes, $secs seconds"
