# Ops Challenge - Loops

## Overview

Loops let us repeat an operation either indefinitely or for a fixed number of repetitions in a program. There are two types of loops to be aware of: "while" loops and "for" loops.

## Objectives

- Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
- Use a loop in your script.

## Resources

- [Bash loops](https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php){:target="_blank"}
- Tutorials
  - [Bash](demo/bash.md)
  - [PowerShell](demo/powershell.md)
  - [Z shell](demo/zsh.md)

## Tasks

- Write a script that:
  1. Displays running processes
  1. Asks the user for a PID
  1. Kills the process with that PID
  1. Starts over at step 1 and continues until the user exits with `Ctrl + C`
- Use a loop so that the script will continuously start over, displaying the running processes, asking the user for input, etc.
- For this assignment, initialize a process that won't harm the OS's functionality upon termination. Don't kill essential processes required for the OS to work, such as kernel drivers.
  > Hint: you can open a second terminal in your development environment and start it pinging one of your other machines. This will be a safe process to target.

## Stretch Goals

Include a step which asks the user if they would like to kill again, and if they indicate they do, causes the script to finish.
