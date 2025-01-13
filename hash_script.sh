#!/bin/bash

read -p "Please provide a unique 4-digit integer (e.g Student ID): " user_integer

if [[ $user_integer =~ ^[0-9]{4}$ ]]; then

    hashed_integer=$(echo -n "$user_integer" | sha256sum | awk '{print $1}')

    echo "User 4-digit integer: $user_integer" > hash_output.txt
    echo "Hashed integer with SHA-256 algorithm: $hashed_integer" >> hash_output.txt

    echo "User integer has been hashed successfully. User input and hashed output saved to 'hash_output.txt'."
else
    echo "Invalid user input, please provide a 4-digit integer."
    exit 99
fi
