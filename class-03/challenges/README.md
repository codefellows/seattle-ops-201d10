# Ops Challenge - Functions

## Overview

In Bash, functions are blocks of reusable code that can be defined once and then called multiple times throughout a script or the command line. Functions provide a way to organize and modularize code, making scripts easier to read, maintain, and debug. They are similar to functions in other programming languages and follow a simple syntax.

Think of functions as recipes or task lists. Given a good recipe anyone can bake a cake. Given a proper set of instructions, anyone can unload a dishwasher. Similarly, in a script, a function is a list of commands that all have to happen to complete some larger task.

### Function Definition
To define a function in Bash, you can use the `function` keyword and syntax:

```bash
function function_name() {
    # Code Block (commands and code go here)
}
```

Alternatively, you can omit the `function` keyword and define the function without it like this:

```bash
function_name() {
    # Code Block (commands and code go here)
}
```

### Function Invocation
Once you have defined a function, you can call it (or "invoke" it) anywhere in your script by using its name. For example:

```bash
function_name
```

### Function Parameters
Bash functions can define parameters and accept arguments. Parameters are referenced within the function using special variables, such as `$1` for the first parameter, `$2` for the second, and so on. The total number of parameters passed to the function is represented by `$#`, and all the parameters can be referenced as an array using `$@`.

Here's an example of a function with parameters:

```bash
greet_user() {
    echo "Hello, $1! How are you?"
}

# Call the function with an argument
greet_user "John"
```

### Return Values
Bash functions can return values using the `return` statement. The return value is an integer between 0 and 255, where 0 typically indicates success, and any other value represents an error or failure. To retrieve the return value of a function, you can use `$?` immediately after calling the function.

Think of this as you asking someone to fold the laundry (`function foldLaundry()`) and sending you a text message when they're done (`return 1`).

Here's an example of a function that returns a value:

```bash
add_numbers() {
    result=$(( $1 + $2 ))
    return $result
}

# Call the function and store the result in a variable
add_numbers 10 5
sum=$?
echo "The sum is: $sum"
```

### Variable Scope
Variables defined within a function have local scope, meaning they are only accessible within the function. Any changes made to local variables do not affect variables with the same name outside the function.

However, you can explicitly declare a variable as `global` within the function by using the `declare` keyword with the `-g` option. This way, the variable's value will be retained after the function finishes executing.

```bash
global_var_function() {
    declare -g my_global_variable="This is a global variable"
}

global_var_function
echo "Value of my_global_variable: $my_global_variable"
```

Functions in Bash are simple, and they don't support all the features found in functions of more complex programming languages. Nonetheless, they are very useful for structuring code and improving script readability and maintainability.

## Resources

- [Bash functions](https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php)
