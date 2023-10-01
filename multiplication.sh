#!/bin/bash
#check if exactily two parameters are proviede
if [ "$#" -ne 2 ]; then
echo "Usage: $0 Invalid input"
exit 1
fi

#Validate inputs to ensure they are positive integers
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]] || ! [[ "$2" =~ ^[1-9][0-9]*$ ]]; then
echo "Input must be greater than 0."
exit 1

fi
#extract the number of rows and colusmn from the arguments
rows="$1"
cols="$2"
#print
for i in $(seq 1 "$rows"); do
for j in $(seq 1 "$cols"); do
result=$((i * j))
printf "%3d * %3d = %3d " "$1" "$2" "$result"
done
echo ""  #new line
done
