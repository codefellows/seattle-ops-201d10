# Challenge - Conditionals

## Demo Code

Syntax for Bash conditionals:

```bash
#!/bin/bash

# Script Name:                  Bash Conditionals Demo
# Author:                       Hexx King
# Date of latest revision:      7/31/2023
# Purpose:                      A grocery list checker

# Array to store the grocery list
grocery_list=("apples" "milk" "bread" "eggs")

# Function to check if an item is in the grocery list
is_item_in_list() {
  search_item="$1" # item I am looking for in my list
  for item in "${grocery_list[@]}"; do
    # check if the item Im searching for is in the array or not
    if [ "$item" == "$search_item"]; then
      return 0 # true - item was found!
    fi
  done
  return 1 # false - item was not found
}

# Loop to repeatedly ask the user for items to check
while true; do
  # ask the user for input of an item to look for in the list
  read -p "Enter an item to check if it's on your grocery list.(or type 'done' to finish)" item_to_check
    # item_to_check is a variable that will store the user's input

  # check if the user's input is "done"
  if [ "$item_to_check" = "done" ]; then
    break # exit the loop
  fi

  # check if the item is in the grocery list using the function
  if is_item_in_list "$item_to_check"; then
    echo "Item '$item_to_check' is already on your grocery list."
  else
    # if the item is not on the list, ask the user if they want to add it
    read -p "'$item_to_check' is not on your list, do you want to add it? (yes/no)" add_item
    if [ "$add_item" = "yes" ]; then
      grocery_list+=("$item_to_check")
      echo "'$item_to_check' added to your grocery list."
    else
      echo "'$item_to_check' is not on your grocery list."
    fi
  fi
done

# Ask the user if they are ready to see their completed grocery list
read -p "Are you ready to see your completed grocery list? (yes/no)" show_list
if [ "$show_list" = "yes" ]; then
  echo "Your completed grocery list: "
  echo "${grocery_list[@]}"
else
  echo "Ok, you can check your list later."
fi


# End
```
