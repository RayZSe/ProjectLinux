#!/bin/bash

# Function to count the number of files in the current directory
file_count() {
    local count=$(ls -1 |  wc -l)
    echo $count
}

# Main function
main() {
    local num_files=$(file_count)
    local guess

    echo "Welcome to the Guessing Game!"
    echo "Guess how many files are in the current directory:"

    while true; do
        read -p "Enter your guess: " guess

        if [[ $guess -lt $num_files ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $num_files ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed the correct number of files: $num_files"
            break
        fi
    done
    echo "***" && ls -1
}
# Call the main function
main
