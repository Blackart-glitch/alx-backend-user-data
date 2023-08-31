#!/bin/bash

# Set the initial count
count=1

# Loop through each file
for file in $(git status -s | awk '{print $2}')
do
    # Stage the file
    git add "$file"

    # Commit with a message indicating the nth change
    git commit -m "Change $count: Modified $file"

    # Increment the count
    ((count++))
done

echo "All changes staged and committed."