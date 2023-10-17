# Imaging, Backup, and Recovery

## Overview

As a service desk technician, it's important to be prepared for when computer systems inevitably malfunction and data is lost. Today you will use Windows Recovery and Veeam to perform imaging, backup, and system recovery operations on a Windows 10 VM. You'll get to practice using Microsoft OneDrive to sync a local directory against the Office 365 Cloud. You'll also explore VirtualBox backup capabilities including .ova export and snapshots.

## Tasks

For each step below, include a description of the steps you took during each operation. Include screenshots as necessary, particularly to depict before/after states to indicate whether a restoration procedure was successful.

### Part 1: Veeam Free File Level Backup and Restore

- On [veeam.com](https://www.veeam.com/) create a user account.
- On your Win 10 VM, download and install [Veeam Agent for Microsoft](https://www.veeam.com/agent-for-windows-community-edition.html) and take an image of the PC.
  - Do not create a backup USB drive using the Veeam Recovery Media Creation Wizard.
- Perform a file level backup of your personal files (user data folders including Desktop, Documents, etc.) to the same drive in a different part of it.
- Delete some of your personal files, e.g. delete some files from your Desktop.
- Use Veeam's File Level Restore tool to restore the files you deleted.
- What did you learn?
- What challenges did you encounter?
- What challenges do you anticipate by using this procedure at increasing scale?

### Part 2: VirtualBox VM Tools - Log System, Clone

- Assess how much free space your host computer's hard drive has. Be mindful not to max out the hard drive with the operation below.
- Create a *full*, *current-state* clone of a VM.
  - Define all the other options presented here besides *full* and *current-state*; what do they do?
- Access the cloned VM. Is everything present and operational as expected?
- How might this feature be useful for lab work?

- Locate the "Logs" console in VirtualBox for a VM you recently used.
- Identify the logged event showing the VM starting up and include a screenshot in your submission clearly indicated this line.
- Identify the logged event showing the VM shutting down and include a screenshot in your submission clearly indicated this line.
- Identify the logged events showing VirtualBox starting up and include a screenshot in your submission clearly indicated these lines.
  - What host system information is presented here?
- Why might VirtualBox have a logging system?
- What log analysis tools are available in this "Logs" console?
  - How do these tools compare to the analysis tools available in Windows Event Viewer?
- Do you think all software applications have some kind of logging or console system?

### Part 3: OneDrive Automated Backup

Create a Microsoft O365 account in order to get access to OneDrive, Microsoft's cloud file hosting service.

- On your Win 10 VM, install OneDrive and log into it as your O365 account.
- Configure your OneDrive folder and add some files to it.
- Backup your files to OneDrive.
- Access OneDrive from O365 web portal.
- Was your operation successful?
- How might OneDrive be useful in an enterprise environment for file sharing and backup?

## Stretch Goals (Optional Objectives)

Perform these optional objectives if you have additional remaining lab time or are an advanced user.

- On your *physical lab PC*, download and install [Veeam Agent for Microsoft](https://www.veeam.com/agent-for-windows-community-edition.html) and take an image of the PC.
- Using Veeam, create a backup *physical lab PC* USB drive using the Veeam Recovery Media Creation Wizard.
- Using Veeam, perform a full system backup of your *physical lab PC* to an external storage device such as a USB or external HDD of sufficient capacity.
- Install an application you do not currently have, such as [Adobe Reader](https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html) or [Google Chrome](https://www.google.com/chrome/browser/index.html).
- Boot from the Veeam Recovery USB Drive and recover the system. This is called a "bare metal" system restoration.
- Why might you backup an entire computer and create a bootable recovery drive?
- What did you learn?
- What challenges did you encounter?
- What challenges do you anticipate by using this procedure at increasing scale?
- What are some benefits vs limitations of system imaging?

## Submission Instructions

1. Create a new blank Google Doc.
1. Populate the Google Doc with the contents of your submission as required above.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
