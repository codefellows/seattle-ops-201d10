#!/bin/bash

# Script:                       Ops 201 Class 6 Solution
# Author:                       Marco Vazquez
# Date of latest revision:      2/7/2022
# Purpose:                      Solution Class 6

# Declaration of array
files=(file1.txt file2.txt file3.txt file4.txt)

# For loop iterates through each value in array
for file in "${files[@]}"
do
    # If conditional, checks if the file exists
    if [ -f "$file" ]; then
        # If file exists then print out the following statement.
        echo "$file exists."
    # If file does not exists, create it.
    else
        echo "$file does not exists."
        touch $file
        echo "The $file has been created."
    fi
done
