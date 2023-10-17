# Ops Challenge - Loops

## Overview

In Bash, loops are control structures that allow you to repeatedly execute a block of code based on certain conditions. There are primarily two types of loops in Bash:

1. **`for` loop**: This loop is used when you know the number of iterations you want to perform. It iterates over a sequence of values, such as numbers or strings in an array.

   The general syntax of a `for` loop in Bash is:

   ```bash
   for variable in list
   do
       # Code Block to be executed for each iteration
   done
   ```

   Explanation:
   - `variable`: A variable that is dynamically assigned to each value from the `list` during each iteration.
   - `list`: A sequence of values separated by spaces. This can be a range (e.g., `{1..5}`) or an array variable (e.g., `${array[@]}`).

   Example of a range:
   ```bash
   for i in 1 2 3 4 5
   do
       echo "Number: $i"
   done
   ```

2. **`while` loop**: This loop is used when you want to repeatedly execute a block of code as long as a certain condition is true.

   The general syntax of a `while` loop in Bash is:

   ```bash
   while [ condition ]
   do
       # Code Block to be executed as long as the condition is true
   done
   ```

   Explanation:
   - `condition`: A test expression that determines whether the loop should continue running. It should evaluate to either true or false.

   Example:
   ```bash
   count=1
   while [ $count -le 5 ]
   do
       echo "Number: $count"
       ((count++))
   done
   ```

Both `for` and `while` loops can be used for different purposes in scripting, such as iterating over arrays, reading lines from files, performing arithmetic operations, and more. Additionally, you can use the `break` and `continue` statements within loops to control their flow:

- `break`: It terminates the loop prematurely, causing the script to continue executing after the loop.
- `continue`: It skips the rest of the loop code for the current iteration and starts the next iteration.

It's essential to be careful with loops to avoid creating infinite loops that never terminate. Always ensure that the loop's condition eventually evaluates to false, or use `break` statements when necessary to exit the loop under specific conditions.

Loops in Bash are powerful tools for automating repetitive tasks and processing data efficiently. They are commonly used in shell scripts to handle various scenarios, such as batch processing, data manipulation, and system administration tasks.

## Resources

- [Bash loops](https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php)
- Tutorials
  - [Bash](demo/bash.md)
  - [PowerShell](demo/powershell.md)
  - [Z shell](demo/zsh.md)

## Notes

### Creating a Running Process to Safely Terminate

- **`ping 8.8.8.8 -q &.`**
  - The `ping 8.8.8.8` starts pinging Google's public DNS server.
  - The `-q` flag is for 'quiet', and suppresses the output which would otherwise be printed to the screen.
  - It will still tie up your terminal session though, which is what the trailing `&` is for. It sends the running process to the background.

### Important Commands to Know

- **`ps aux`**:
  - The `ps` command is used to provide information about the running processes on a Unix-like operating system, including Linux and macOS. The `aux` options used together with `ps` show a detailed list of all running processes in a user-friendly format.
    - `a`: Show processes for all users, not just the current user.
    - `u`: Display the detailed user-oriented format, including the user, process ID (PID), CPU usage, memory usage, start time, and other details.
    - `x`: Include processes that are not attached to a terminal. This includes background processes or daemons.
  - The output of `ps aux` provides valuable information about all the running processes, which is useful for system monitoring, identifying resource usage, and managing processes.

- **`kill -9 PID`**:
  - The `kill` command is used to send a signal to a process in Unix-like operating systems. By default, when you use `kill` without specifying a signal number, it sends the `TERM` signal (signal number 15), which is a request for the process to terminate gracefully.
  - However, `kill -9 PID` sends the `SIGKILL` signal (signal number 9), which is a non-catchable, non-ignorable signal. When a process receives the `SIGKILL` signal, it immediately terminates without having a chance to clean up or perform any cleanup actions.
  - The general syntax of the `kill` command is `kill SIGNAL PID`, where `SIGNAL` is the signal to be sent, and `PID` is the Process ID of the target process.
  - For example, `kill -9 1234` will send the `SIGKILL` signal to the process with the PID 1234, forcibly terminating it.
  - It's worth noting that using `kill -9` should be done with caution, as it doesn't allow the process to perform any cleanup or shutdown operations, potentially leading to data loss or other undesirable consequences. It should only be used as a last resort when a process is unresponsive to other termination signals and needs to be forcefully terminated.

## Resources

- [Bash loops](https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php)
- Tutorials
  - [Bash](demo/bash.md)
  - [PowerShell](demo/powershell.md)
  - [Z shell](demo/zsh.md)
