# Ops Challenge - My First Bash Script

Welcome to your first Ops Challenge assignment! Ops Challenges are designed to build your scripting and automation skills in the most industry relevant languages. In Ops 201 we'll kick things off with Bash.

Scripting is useful for automating tasks on Linux systems. By executing a script, we can automate the tedium of a human being present at the terminal typing each command. To do this, we'll need to know basic software development concepts. In the first week of this class, we'll study the absolute fundamentals.

The objective of the Ops Challenge series in Ops 201 is to create a set of useful systems administration and troubleshooting scripts. Our first stop will be using variables.

## Variables
In Bash, variables are used to store data and are an essential part of scripting. Variables allow you to store and manipulate information dynamically during the execution of a script or in the shell. We use variables to hold various types of data, such as text strings, integers, arrays, and more.

As an example, your "age" is a variable. It stores the number of years you've been alive. As that you get older, that value changes. When someone asks you your age, you respond with the current value. This is a powerful tool when writing code because data changes constantly, and we need easy ways to reference it.

### Variable Declaration and Assignment
You declare a variable name and assign it a value using the following syntax:

```bash
variable_name=value
```

There should be no spaces around the equal sign when assigning a value. Bash variables are case-sensitive, so `myVariable` and `myvariable` are considered different variables.

Examples:
```bash
name="John"
age=30
is_student=true
numbers=(1 2 3 4 5)
```

### Accessing Variables
To access the value stored in a variable, prefix the variable name with a dollar sign (`$`):

```bash
echo $name       # Prints the value of 'name' variable (John)
echo $age        # Prints the value of 'age' variable (30)
```

### Quoting Variable Values
When using variables in a command, the best practice to enclose the variable in double quotes. This ensures that the variable's value is treated as a single entity, especially when it contains spaces or special characters.

```bash
greeting="Hello, World!"
echo "$greeting"    # Enclosing in double quotes preserves the spaces and special characters
```

### "Read Only" Variables
You can declare variables as "readonly", which means their values cannot be changed or reassigned once they have been initially set. This can be useful for constants or to prevent accidental modifications. As a best practice, constants should be capitalized.

```bash
readonly MY_PLANET="Earth"
```

### Unsetting Variables
To remove the value of a variable and unset it, use the `unset` command:

```bash
variable="Hello"
echo $variable     # Output: Hello
unset variable
echo $variable     # Output: (empty line)
```

### Environment Variables
Environment variables are special variables that are part of the shell's environment and are accessible to all processes started from the shell. They often hold information about the system and user preferences.

Environment variables are typically written in uppercase letters like this:

```bash
echo $HOME        # Prints the user's home directory
echo $PATH        # Prints the system's search path for executables
```

### Arithmetic Operations
Bash allows for basic arithmetic operations using variables. For this, you can use the `$((...))` construct, where your calculations occur within the parenthesis. Note that you can use variables as part of your calculations.

```bash
num1=5
num2=10
sum=$((num1 + num2))
echo "The sum is: $sum"    # Output: The sum is: 15
```

## Resources

- [Visual Studio Code](https://code.visualstudio.com/)
- [Download Git Bash](https://git-scm.com/downloads)
- [How to install git bash on Windows 10](https://www.stanleyulili.com/git/how-to-install-git-bash-on-windows/)
- [Intro to Bash Variables](https://ryanstutorials.net/bash-scripting-tutorial/bash-variables.php)
- Tutorials
  - [Bash Variables](demo/bash.md)
  - [PowerShell Variables](demo/powershell.md)
  - [Z shell Variables](demo/zsh.md)
