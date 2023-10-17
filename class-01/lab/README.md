# Backup Your System

## Overview

Backing up your computer configuration and/or data is an essential part of establishing a working "baseline," or known good configuration.

> Your client or employer's data is sacred. Make a habit of proactively protecting that data and mitigating risks.

## Objectives

- Create a backup .ova of Windows 10 and demonstrate .ova import.
- In Windows 10, create a system restore point and perform a restore operation.

## Resources

- [How to Import and Export OVA Files in VirtualBox](https://www.maketecheasier.com/import-export-ova-files-in-VirtualBox/){:target="_blank"}

## Tasks

### Part 1: Backup & Restore a Windows 10 VM with VirtualBox

By now, you're familiar with installing Ubuntu Linux and Windows 10 from scratch using their source .iso disk images. Moving forward, we usually won't be installing things from .iso; there are much more efficient methods such as exporting/importing VirtualBox's .ova image file.

- If you have not done so yet in Ops 102, create an .ova of your Windows 10 VM.
- Demonstrate in your submission today how you'll be sorting .ova image files and that you have enough storage. At minimum, 120 GB of space on a second disk is required, and .ova files should be organized and named with their class code or purpose.

> Staying organized is vital to succeed in Ops, where you're handling multiple computers and parts at any given time.

- Create a file "testfile.txt" on the desktop within the Windows 10 VM.
- Delete the VM (and all associated data) using VirtualBox Manager.
- Import your .ova file as a new VM. The .ova file was created in Ops 102.
- Access the VM; is your testfile.txt present on the desktop? Why/why not?
- Identify in your system where the VM hard drive file is located that is associated with your Windows 10 VM.
  - What is this file?
  - What does the extension signify?
  - What extension would a VMware hard drive file use instead?
  - How is it different from your .ova file?

### Part 2: Using VirtualBox Snapshots

- Take a snapshot of a running VM.
- Add a new file to the desktop.
- Restore the snapshot you created. Does the new file exist? Why/Why not?

> Take a snapshot at the beginning of imported lab scenarios in Ops, to give yourself a quick way to restart the lab if things don't go well.

### Part 3: System Restore

If you're supporting Windows 10 endpoints for a company, you won't always have access to a VM backup mechanism on the hosting platform. Thankfully, Windows 10 ships with System Restore.

- Using System Restore in your Windows 10 VM, create a "restore point."
- Create "testfile.txt" on the desktop.
- Install an application such as Google Chrome.
- Perform a System Restore against the saved restore point.
- Are testfile.txt and Google Chrome present on the restored VM? Why/why not?

If you've completed all the steps in the lab, you're well-equipped to perform baseline backups of your operating systems and VirtualBox VMs. If anything goes haywire in class, restoring to a known good baseline is your "Plan B" option.

### Part 4: Lab Documentation

Answer the following in your submission:
- How will you restore your Ubuntu system if something with the OS goes wrong?
- How will you restore your Windows 10 VM is something with its OS goes wrong?
- How are you documenting the following lab computer information:
  - Network configuration
  - Passwords
  - Installed software

## Submission Instructions

1. Create a new blank Google Doc. Include above assignment submission text and images within this Google Doc.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
