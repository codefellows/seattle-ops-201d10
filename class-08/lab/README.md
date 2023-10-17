# System Log Analysis and Registry

## Overview

Analyzing what a computer is telling you when things go wrong is an important skill to develop in order to support computer operations. In today's lab you will practice using two important Windows tools: Event Viewer and Registry Editor. You will spend some time performing practical operations with these tools, and also gain experience analyzing error codes and system logs.

## Objectives

On a Windows 10 VM:
- Backup and restore a portion of the registry
- Set a System Restore Point and later revert all the changes made to the Registry.
- Perform the [Ten Windows Registry Hacks](https://www.howtogeek.com/669971/the-top-10-best-registry-hacks-for-windows-10/){:target="_blank"} in Registry Editor to achieve the desired behaviors listed in the article:
- Obtain and analyze BSOD screen examples and error codes using a search engine
- Access Event Viewer and analyze ten different events

## Resources

- [Ten Windows Registry Hacks](https://www.howtogeek.com/669971/the-top-10-best-registry-hacks-for-windows-10/){:target="_blank"}
- [Windows Update Error Reference](https://docs.microsoft.com/en-us/windows/deployment/update/windows-update-error-reference#windows-update-error-codes){:target="_blank"}

## Tasks

For this lab, utilize any Windows 10 VM you have available that you generated yourself. For each task below, include a text description of what you performed and screenshots if they are relevant.

### Part 1: Registry

- First, create a System Restore Point.
- Identify where Windows saves its registry files.
- Read about these [Ten Windows Registry Hacks](https://www.howtogeek.com/669971/the-top-10-best-registry-hacks-for-windows-10/){:target="_blank"} listed below:
  1. Switch windows with a single click on the taskbar
  1. Add apps to the desktop context menu
  1. Show seconds in the Taskbar Clock
  1. Remove 3D Objects (and other folders) from This PC
  1. Hide OneDrive from File Explorer
  1. Remove lock screen overlay
  1. Remove Bing Search fromm the start menu
  1. Remove Cortana taskbar tool
  1. Disable "shake to minimize"
  1. Use Windows Photo Viewer instead of the Photos app
- Perform 5 of the changes on your lab system. For each one of the 5, document below:
  - Screenshot of the outcome
  - Did your registry change achieve the desired outcome? Why or why not?
  - How might this registry change be useful on a business computer?
- For one of the 5, backup just the portion of the Registry where you are making the change by selecting File > Export...
  - After documenting the change you made, Import the backup of that portion of the Registry back into the Registry Editor. What happened to the edits you made? How might this be useful?
- Finally, use the System Restore Point you created earlier to undo these registry edits.

### Part 2: System Crash Analysis

- The blue screen of death (BSOD) is a famous system crash screen on Windows, and you're likely to encounter it while supporting Windows systems. Use an image search engine to lookup *two distinct BSOD screens* from various versions of Windows. For each BSOD, include the image and describe below.
  - Identify the stop code.
  - Determine what part of the computer caused the error.
  - Identify the memory address.
  - What does this error seem to indicate?

- Using online resources such as [Windows Update Error Reference](https://docs.microsoft.com/en-us/windows/deployment/update/windows-update-error-reference#windows-update-error-codes){:target="_blank"}, research 2 of the 5 error codes listed below and explain in your own words what causes the error:
  - Error message: "This device cannot start. (Code 10)"
  - Error 0xC004C003
  - Error 0x80070070
  - Error 0x80200056
  - Error message "WU_E_NO_SERVICE"

### Part 3: System Log Analysis

- Open Event Viewer
  - In your submission, list *five different system events* identified during your analysis of event logs. If possible, include at least one example of each event type discussed in lecture. To cause errors and warnings, try a forced-shutdown of the virtual machine (improper power-off).
  - For each event you select, research and explain in non-technical terms:
    - Include the event information completely including:
      - Level
      - Date and Time
      - Source
      - Event ID
      - Task Category
      - General
      - Details
    - What is happening in this event (what hardware or software components are involved)?
    - Why was it triggered?
    - Where in event viewer you found this event
    - Is there an error taking place? If so, how severe is the issue?
  - Export system logs to a file.
  - Filter the view by event number. How might this be useful when analyzing a specific event?
  - Sort the view by timestamp. How might the accuracy of timestamps on various log systems affect the analysis of a major incident spanning multiple systems, for better or worse?
  - Describe the contents of these subfolders of the Windows Logs:
    - Application
    - Security
    - Setup
    - System
    - Forwarded Events
  - Describe the contents of these subfolders of the Applications and Services Logs:
    - Hardware Events
    - Internet Explorer
    - Key management Service
    - Microsoft
    - Microsoft Office Alerts
    - OpenSSH
    - Windows PowerShell

## Stretch Goals

- Use a search engine to find a Windows system log analyzer application
  - Install it on your Windows 10 VM
  - Evaluate how useful it is
  - Include screenshots and discussion of your experimentation with this log analyzer tool

## Submission Instructions

1. Create a new blank Google Doc.
1. Populate the Google Doc with the contents of your submission as required above.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
