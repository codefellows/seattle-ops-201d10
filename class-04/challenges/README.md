# Ops Challenge - Arrays

## Overview

In Bash, an array is a collection of multiple values (sometimes made of different data types) assigned to a single variable. Arrays provide a way to group related data elements together for easier manipulation and processing. In Bash, arrays are zero-indexed, which means the first element has an index of 0, the second element has an index of 1, and so on.

An "index" refers to a numeric value that represents the position of an element within the array. Indexing allows you to access individual values within the array.

**Declaring an array in Bash**
To declare an array in Bash, you use the following syntax:

```bash
my_array=(value1 value2 value3 ... valueN)
```

You can also initialize an array element by element:

```bash
my_array[0]=value1
my_array[1]=value2
# ... and so on
```

**Accessing elements of an array**
To access the elements of an array, you use the array name followed by the index enclosed in curly braces. For example:

```bash
echo "${my_array[0]}"  # Accesses the first element
echo "${my_array[1]}"  # Accesses the second element
```

**Looping through an array**
You can use loops to iterate over the elements of an array. The most common loop for this purpose is the `for` loop:

```bash
# Loop through the array and print its elements
for element in "${my_array[@]}"; do
    echo "$element"
done
```

**Appending elements to an array**
You can add elements to an existing array using the `+=` operator or by directly assigning a new value to an index that doesn't exist yet:

```bash
my_array+=(newValue)      # Appends "newValue" to the end of the array
my_array[3]="anotherValue"  # Sets the value "anotherValue" at index 3
```

**Array length**
To get the number of elements in an array, you can use the `${#array[@]}` syntax:

```bash
length=${#my_array[@]}
echo "Array length: $length"
```

## Resources

- [Bash arrays](https://linuxhandbook.com/bash-arrays/)
- Tutorials
  - [Bash](demo/bash.md)
  - [PowerShell](demo/powershell.md)
  - [Z shell](demo/zsh.md)
