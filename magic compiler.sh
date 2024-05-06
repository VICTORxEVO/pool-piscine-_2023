#!/bin/bash

# Loop through all the folders named exXX, where XX is a two-digit number
for folder in ex??; do
    # Check if the folder exists and is a directory
    if [ -d "$folder" ]; then
        # Change into the folder
        cd "$folder"
        
        # Compile all .c files in the current folder and link them into an executable
        if clang -o "${folder}.out" *.c -Wall -Wextra -Werror -O2 -lm; then
            echo "Compiled $folder successfully"
        else
            echo "Error compiling $folder"
        fi
        
        # Return to the parent directory
        cd ..
    fi
done

