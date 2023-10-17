# Ops Challenge - System Process Commands

## Overview

In today's Ops Challenge you will analyze, initialize, and terminate processes (programs) using Powershell commands. As you practice these commands and gain skill with Powershell scripting, consider both the administrator utility value and cyber attacker utility value of knowing such commands.

**Today's code is not meant to be run as one whole script, but is rather a collection of commands, each of which can be run individually.**

> The 'Run Selection' option in PowerShell ISE is helpful for this assignment.

## Objectives

- Write a set of Powershell commands that fetch info about running processes, open processes, and close processes.
- Include language appropriate syntax and file extensions.

## Resources

- [Managing processes with Process cmdlets](https://learn.microsoft.com/en-us/powershell/scripting/samples/managing-processes-with-process-cmdlets?view=powershell-7.3)

## Tasks

Create a Powershell script that performs these operations on separate lines. The overall script is not designed to operate holistically, but rather act as a reference for how to execute various interesting operations with the process family of Powershell commandlets. Clearly indicate with comments each component below.

> Remember to follow this class's commenting requirements on all scripts.

  1. Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
  1. Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
  1. Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
  1. Start a browser process (such as Google Chrome or MS Edge) and have it open <https://owasp.org/www-project-top-ten/>.
  1. Start the process Notepad ten times using a for loop.
  1. Close all instances of the Notepad.
  1. Kill a process by its Process Identification Number. Choose a process whose termination won't destabilize the system, such as Google Chrome or MS Edge.

## Stretch Goals (Optional Objectives)

Pursue these optional objectives if you are an advanced Powershell user or have remaining lab time.

1. Embed each task above into its own function.
1. Create a menu which lets the user choose between each function.
