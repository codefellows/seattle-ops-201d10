# Ops Challenge - Conditionals

## Overview

In Bash, conditionals are used to make decisions and control the flow of a script based on certain conditions. In Bash, `if`, `else`, and `elif` are used for implementing conditional logic. They allow you to make decisions in your script based on certain conditions.

### `if` statement:

The `if` statement is the foundation of conditional statements in Bash. It has the following syntax:

```bash
if [ condition ]; then
    # code block to be executed if the condition is true
fi
```

Explanation:
- The `if` keyword starts the conditional block.
- `[ condition ]` is a test expression that is evaluated. The square brackets `[ ]` are used for evaluation, and there must be spaces between the brackets and the condition.
- If the condition evaluates to true (i.e., its exit status is 0), the code within the `then` block is executed.
- The `fi` (short for "if") keyword marks the end of the conditional block.

Example:

```bash
#!/bin/bash

age=25

if [ "$age" -ge 18 ]; then
    echo "You are an adult."
fi
```

### `if-else` statement:

The `if-else` statement extends the `if` statement to include an alternative code block to be executed when the condition is false. It has the following syntax:

```bash
if [ condition ]; then
    # code block to be executed if the condition is true
else
    # code block to be executed if the condition is false
fi
```

Explanation:
- After the `then` block, the `else` keyword marks the beginning of the code block that will be executed if the condition is false.
- If the condition in the `if` statement is true, the code within the `then` block is executed, and the `else` block is skipped. If the condition is false (non-zero exit status), the code within the `else` block is executed.

Example:

```bash
#!/bin/bash

age=15

if [ "$age" -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi
```

### `if-elif-else` statement:

The `if-elif-else` statement is used to check multiple conditions and execute different code blocks based on the first condition that evaluates to true. It has the following syntax:

```bash
if [ condition1 ]; then
    # code to be executed if condition1 is true
elif [ condition2 ]; then
    # code to be executed if condition2 is true
else
    # code to be executed if none of the conditions are true
fi
```

Explanation:
- The `elif` keyword (short for "else if") allows you to chain multiple conditions together after the initial `if` statement.
- The conditions are evaluated sequentially from top to bottom. If `condition1` is true, the code within the corresponding `then` block is executed, and the rest of the `elif` and `else` blocks are skipped.
- If `condition1` is false, the script moves to the next condition (`condition2`). If `condition2` is true, the code within its corresponding `then` block is executed, and so on.
- If none of the conditions (`condition1`, `condition2`, etc.) are true, the code within the `else` block is executed (if present).

Example:

```bash
#!/bin/bash

num=42

if [ "$num" -lt 0 ]; then
    echo "Number is negative."
elif [ "$num" -eq 0 ]; then
    echo "Number is zero."
else
    echo "Number is positive."
fi
```

In this example, the script checks the value of the variable `num` and prints a message based on whether it's negative, zero, or positive.

## Booleans in Bash?

In Bash, booleans are not a distinct data type like in some other programming languages. Instead, Bash uses exit status codes to represent boolean values. In Bash, an exit status of 0 represents success or "true," while a non-zero exit status represents failure or "false."

In most cases, commands and statements in Bash return an exit status of 0 when they successfully complete and a non-zero exit status when they encounter an error or fail to execute correctly. This mechanism allows you to use the result of commands and expressions in conditionals to make decisions.

## Comparison Operators in Bash

In Bash, comparison operators are used to perform comparisons between values or variables. These operators return a Boolean value (0 for true or 1 for false) based on whether the comparison is successful or not. These comparisons are used within conditional statements to make decisions in a script.

### Numeric comparison operators:

  - `-eq`: Equal to
  - `-ne`: Not equal to
  - `-lt`: Less than
  - `-le`: Less than or equal to
  - `-gt`: Greater than
  - `-ge`: Greater than or equal to

  Example:

  ```bash
  # Numeric comparison
  a=10
  b=20

  if [ "$a" -lt "$b" ]; then
      echo "a is less than b."
  fi
  ```

### String comparison operators:

  - `=`: Equal to (for string comparison)
  - `!=`: Not equal to (for string comparison)
  - `<`: Less than (in ASCII alphabetical order)
  - `>`: Greater than (in ASCII alphabetical order)
  - `-z`: Empty string (returns true if the string is empty)

  Example:

  ```bash
  # String comparison
  str1="apple"
  str2="banana"

  if [ "$str1" = "$str2" ]; then
      echo "The strings are equal."
  else
      echo "The strings are not equal."
  fi
  ```

### File test operators:

  - `-e`: File exists (returns true if the file exists)
  - `-f`: Regular file (returns true if the file is a regular file)
  - `-d`: Directory (returns true if the file is a directory)
  - `-r`: Readable (returns true if the file is readable)
  - `-w`: Writable (returns true if the file is writable)
  - `-x`: Executable (returns true if the file is executable)

   Example:

  ```bash
  # File test
  file="/path/to/somefile"

  if [ -f "$file" ]; then
      echo "The file exists and is a regular file."
  fi
  ```

### Logical operators:

  - `!`: Logical NOT (inverts the truth value)
  - `-a`: Logical AND (returns true if both conditions are true)
  - `-o`: Logical OR (returns true if at least one of the conditions is true)

  Example:

  ```bash
  # Logical operators
  a=10
  b=20

  if [ "$a" -lt 5 -o "$b" -gt 15 ]; then
      echo "At least one condition is true."
  fi
  ```

Remember to use spaces around the comparison operators and operands, as they are necessary for proper evaluation.

## Resources

- [Linux Hint: Bash Conditional Statement](https://linuxhint.com/bash_conditional_statement/)
- Tutorials
  - [Bash](demo/bash.md)
  - [PowerShell](demo/powershell.md)
  - [Z shell](demo/zsh.md)
