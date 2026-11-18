#!/usr/bin/env bash

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

correct=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in this directory."

while true; do
    read -r -p "Enter your guess: " guess

    if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [[ "$guess" -lt "$correct" ]]; then
        echo "Too low! Try again."
    elif [[ "$guess" -gt "$correct" ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done