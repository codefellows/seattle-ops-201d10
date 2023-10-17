# Ops Challenge - Arrays

## Demo Code

```bash
#!/bin/bash

# Declare an array
snacks=("chips" "cookies" "popcorn" "pretzels")

# Accessing elements in the array
echo "The first snack is: ${snacks[0]}"
echo "The second snack is: ${snacks[1]}"
echo "The third snack is: ${snacks[2]}"
echo "The fourth snack is: ${snacks[3]}"

# Append a new snack to the array
new_snack="chocolate"
snacks+=("$new_snack")

# Print the whole array with a single echo
echo "All snacks in the array: ${snacks[@]}"

```
