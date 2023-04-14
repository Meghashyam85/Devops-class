#!/bin/bash

while true
do
    echo "Please select an option:"
    echo "1. Check name"
    echo "2. Create a softlink"
    echo "3. Search a word"
    echo "4. Find the file"
    echo "5. Edit the file"
    echo "6. Exit"

    read option

    case $option in
        1)
            echo "Checking name..."
            ;;
        2)
            echo "Creating a softlink..."
            ;;
        3)
            echo "Searching for a word..."
            ;;
        4)
            echo "Finding a file..."
            ;;
        5)
            echo "Editing a file..."
            ;;
        6)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a number from 1 to 6."
            ;;
    esac
done

