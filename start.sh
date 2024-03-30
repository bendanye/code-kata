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
secs=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

echo "$START_FORMATTED,$secs" >> $DATA_FILE

echo "kata completed!"