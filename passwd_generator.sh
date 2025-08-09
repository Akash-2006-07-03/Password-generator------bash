#!/bin/bash

# A Simple Password Generator

echo "Welcome to the Password Generator"
sleep 3
read -p "Please enter the length of the password: " PASS_LENGTH

if ! [[ "$PASS_LENGTH" =~ ^[0-9]+$ ]]; then
	echo "Invalid input! Try again"
	exit 1
fi

echo -e "\nHere are the 5 generated passwords:\n"

for i in $(seq 1 5); do
echo "Password $i: $(openssl rand -base64 48 | cut -c1-$PASS_LENGTH)"
done
