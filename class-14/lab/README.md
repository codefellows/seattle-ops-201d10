# Malware Remediation Tools and Techniques

## Overview

As a computer operations technician, you'll encounter malware more likely sooner than later. Malicious software can take many forms, including browser extensions and innocuous-looking software or script files. Identifying malware can feel like finding a needle in a haystack if you don't have the right tools. Some useful tools you'll apply to this scenario today include Process Explorer and WinDirStat. These are generally useful tools that can provide administrators additional information about a computer.

## Scenario

Head of operations Phil Price emailed the service desk early this morning.

Phil writes "Hello tech team, I'm having some awful performance issues on my computer this morning. I clicked into a really weird website and my browser restarted unexpectedly, then I did my best to back out of it but I suspect I've caught a virus. Sorry about that. I can't afford to lose this PC, as there's quite a lot of sensitive data and proprietary software that must stay put. I also noticed my hard drive space is very low, which was not the case yesterday. Can you see what's causing the poor performance and remediate as soon as you can? Thank you!"

Credentials:

- admin / solarwinds123
- Phillip Price (p.price) / evilcorp123

## Resources

- [Today's OVA Download](../../){:target="_blank"}
- [Process Explorer](https://learn.microsoft.com/en-us/sysinternals/downloads/process-explorer)
- [WinDirStat](https://www.youtube.com/watch?v=-5ZYc7qye4g)

## Tasks

### Part 1: Staging

Download and import today's OVA.

### Part 2: Process Explorer

- Use Process Explorer to identify unusual systems processes.
- Include a screenshot of the processes located using Process Explorer.
- Terminate the processes, then reboot the computer. Did that resolve the issue?
- If the malware is demonstrating persistence despite reboot, investigate the root cause and remediate.

### Part 3: Disk Consumption

- Use WinDirStat to identify unusual files that are consuming hard disk space. Take a screenshot for your submission.
- Delete the unwanted files. How did you know these were malicious and not normal native Windows files?
- What is pagefile.sys and is it safe to delete? Try deleting it. What happened?

### Part 4: Secure Configuration

- Inspect the computer for insecure configurations and remediate.
- Document what you found and corrected.

### Part 5: Reporting

- What was causing the malware to persist despite reboots and logoffs?
- What actions did you take to harden the system against future security issues?
- How useful were the included tools in remediating the issues?
- Summarize the event. What kind of malware was this, and what was it trying to do?

### Wrap-up

- Download for your own future use the following sysadmin tools:
  - Process Explorer (Windows Sysinternals)
  - WinDirStat

> Consider using a USB flash drive or cloud resource to store these portable tools. You never know when these tools will help you solve a problem for a family member, friend, or client.

- When all your work is complete, delete today's VM and OVA file.

## Submission Instructions

1. Create a new blank Google Doc.
1. Populate the Google Doc with the contents of your submission as required above.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
