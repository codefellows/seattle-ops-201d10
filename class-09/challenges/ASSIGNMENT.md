# Ops Challenge - Log Retrieval via Powershell

## Overview

Powershell can be a powerful time saving tool for common tasks like accessing or backing up system logs. In today's Ops Challenge, you'll practice commands to retrieve system log information via Powershell instead of Event Viewer.

**Today's code is not meant to be run as one whole script, but is rather a collection of commands, each of which can be run individually.**

> The 'Run Selection' option in PowerShell ISE is helpful for this assignment.

## Objectives

- Write a set of Powershell commands that fetch useful System event logs.
- Include language appropriate syntax and file extensions.

## Resources

- [Microsoft.PowerShell.Management documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1)

## Tasks

Create a Powershell script that performs these operations on separate lines. The overall script is not designed to operate holistically, but rather act as a reference for how to execute various interesting operations with the process family of Powershell commandlets. Clearly indicate with comments each component below.

> Remember to follow this class's commenting requirements on all scripts.

1. Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
1. Output all "error" type events from the System event log to a file on your desktop named errors.txt.
1. Print to the screen all events with ID of 16 from the System event log.
1. Print to the screen the most recent 20 entries from the System event log.'
1. Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the ... and show the entire text).

## Stretch Goals (Optional Objectives)

Pursue these optional objectives if you are an advanced Powershell user or have remaining lab time.

1. Embed each task above into its own function, then call each function in main.
1. Ensure that full lines are displayed in all tasks above, similar to task 5.
