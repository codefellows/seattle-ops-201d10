# Ops Challenge - My First Bash Script

Welcome to your first Ops Challenge assignment! Ops Challenges are designed to build your scripting and automation skills in the most industry relevant languages.

Scripting is useful for automating tasks on systems. By executing a script, we can automate the tedium of a human being present at the terminal typing each command. To do this, we'll need to know basic software development concepts. In the first week of this class, we'll study the absolute fundamentals.

The objective of the Ops Challenge series in Ops 201 is to create a useful systems administration and troubleshooting script in either Bash, PowerShell or Z shell. You'll start from scratch and build in new features to your tool every day. Our first stop will be using variables.

## Objectives

- Create a script that prints a string to the console.

## Resources

- [Visual Studio Code](https://code.visualstudio.com/){:target="_blank"}
- [Download Git Bash](https://git-scm.com/downloads){:target="_blank"}
- [How to install git bash on Windows 10](https://www.stanleyulili.com/git/how-to-install-git-bash-on-windows/){:target="_blank"}
- [Creating a Repo](https://docs.github.com/en/get-started/quickstart/create-a-repo){:target="_blank"}
- [Intro to Bash Variables](https://ryanstutorials.net/bash-scripting-tutorial/bash-variables.php){:target="_blank"}
- Tutorials
  - [Bash](demo/bash.md)
  - [PowerShell](demo/powershell.md)
  - [Z shell](demo/zsh.md)

## Tasks

### Part 1: Shelling In

First, if you haven't already, setup VS Code as per today's lab assignment to shell into your dedicated scripting VM. See lab assignment for details.

### Part 2: Creating and Running the Script

1. Run VS Code running on your personal computer and connect it to your development environment via the Remote - SSH plugin (see today's lab), *not* through a regular terminal ssh session (VS Code should say "SSH" in the lower left corner).
1. Open your git-initialized directory with VS Code and create a file called `helloworld.sh`, then open `helloworld.sh` with VS Code.
1. Using the template below as your guide, create the script that will print "hello world" to the screen.
1. Test your script by running it from the command line in SSH, like this:
   `bash helloworld.sh`

## Execution Instructions

For this (and all) automation challenge scripts in this class, start with the template below, so that you and others know why this script was created, what purpose it serves, and how to use it properly.

Add details to each section in the header

Write your code under the `# Main` section

```bash
#!/bin/bash

# Script Name:                  Script Name
# Author:                       Your Name
# Date of latest revision:      00/00/0000
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main



# End
```

## Stretch Goals (Optional Objectives)

Use a variable in your script to print the text "I am working perfectly!" to the screen.
