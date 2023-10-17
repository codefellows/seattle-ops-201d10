# Data Restoration, Startup Repair, and Secure Disposal

## Overview

Computer users make mistakes. Sometimes, those mistakes involve losing access to precious company data. As an Ops professional, you'll need to know how to restore deleted or corrupted data files.

## Scenario

Today, you've got a couple tasks to handle. Most urgently, Samantha in HR needs some files restored.

- Samantha Williams writes: "Hi tech team, I accidentally deleted some really important files from a folder on my desktop. I can't find them in the Recyble Bin. I've got to get this report put together by EOD; panic! Help! Also, while you're tinkering on the computer, can you check out the startup issue I've been having? Thanks so much team!"

Additionally, you are decomissioning a Windows 10 computer and need to securely wipe its HDD for disposal.

Credentials:
- admin / solarwinds123

## Objectives

- Repair Samantha's MBR from a pre-startup console
- Restore deleted files on Samantha's computer
- Securely erase a (virtual) hard drive using DBAN

## Resources

- [ops201-class11.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}
- [EaseUS Recovery Tool](https://www.easeus.com/datarecoverywizard/free-data-recovery-software.htm){:target="_blank"}
  > NOTE: You do not need to download EaseUS for this lab. It is already installed on the VM for today's lab.
- [Darik's Boot and Nuke (DBAN) ISO file](https://sourceforge.net/projects/dban/files/dban/dban-2.3.0/dban-2.3.0_i586.iso/download){:target="_blank"}

## Tasks

### Part 1: Staging

- Download [ops201-class11.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"} and import it into VirtualBox.
  - Make sure that the VM is set to NAT (you will likely experience a network error message if you leave it set to bridged).
- Clone a Windows 10 starter VM to create a VM that you can afford to break/delete.
- Make sure you have a Windows 10 .iso file on hand.
  - [Download a new copy if need to.](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}
- Download [Darik's Boot and Nuke (DBAN) ISO file](https://sourceforge.net/projects/dban/files/dban/dban-2.3.0/dban-2.3.0_i586.iso/download){:target="_blank"}.
- To avoid potential problems while running DBAN, try to have ~40gb of free space on your lab computer.
  - (WHY: we use dynamically allocated disks with out VMs to save space on our lab computers, so a VM with a 50gb virtual disk but only 15gb of data written to the drive will only use 15gb of the host's disk space. However, DBAN securely wipes a drive by writing random characters to the disk, thus it will attempt to write gibberish to the _entire_ disk, causing the VM to temporarily use its entire allotted space. If there is not sufficient space remaining on the host then the lab computer may crash in spectacular fashion.)

For each task below, include in your submission a text description of operations performed and any relevant screenshots as indicated.

### Part 2: Data Restoration

- Attempt to recover Samantha's deleted files using EaseUS Recovery Tool:
  - SampleData.xlsx
  - sampledatafoodsales.xlsx
  - sampledatahockey.xlsx
  - sampledatainsurance.xlsx
  - sampledatasafety.xlsx
- Ensure the files are restored to their proper location and are viewable in LibreOffice by Samantha's user profile.

> You might see some wacky text characters in some of the spreadsheets. Disregard those for now. If you can open the file with LibreOffice, consider it a win!

- Discuss in your submission how easy or difficult this process was. What are the security implications of being able to recover deleted data on a computer?

### Part 3: Data Corruption Repair

Sometimes OS corruption will need to be repaired before the OS launches. This is done by using a bootable Windows 10 ISO and access the terminal pre-OS. Insert the ISO into Samantha's PC and reboot the VM into the ISO.

- In the diagnostics menu go to Troubleshooting & Command Prompt.
  - Perform a master boot record repair using
    - `bootrec /fixmbr`
 - Include a screenshot of the pre-boot terminal

- Next, boot into Windows 10, login to admin, and access the command line. Perform the following:
  - `chkdsk`
  - `sfc /scannow`
  - `dism /online /cleanup-image /restorehealth`

For your submission, describe how successful this operation was.
  - Were there any challenges or obstacles to overcome?
  - How did you overcome them?
  - What is the purpose of the `/online` parameter in DISM? Did your VM have internet access in its pre-boot state?

### Part 4: Secure Data Disposal

In your disposable Windows 10 VM:
  - Attach [Darik's Boot and Nuke (DBAN) ISO file](https://sourceforge.net/projects/dban/files/dban/dban-2.3.0/dban-2.3.0_i586.iso/download){:target="_blank"} to the VM's optical drive, check that the boot order is set appropriately, and boot into DBAN.
  - Select interactive mode.
  - Type `M` for Wipe Method choice menu and select Quick Erase (do not select DOD Short, which takes a long time to run).
  - Press `SPACE` to select the Wipe Method. In the Disks and Partitions menu arrow to the drive you wish to securely erase and select with `SPACE`.
  - Press `F10` to begin the Quick Erase.

> This operation will take a while to run. This is a good time to switch tasks or take a break.

  - Obtain a screenshot of the successful DBAN operation.
  - Eject the virtual DBAN disc.
  - Reboot.
  - If you see `FATAL: No bootable medium found! System halted.` then you have successfully wiped the drive. Nice work!
  - Delete this VM.

For your submission, describe how successful this operation was.
  - Were there any challenges or obstacles to overcome?
  - How did you overcome them?

## Wrapup

- Delete ops201-class10 VM and OVA.

## Submission Instructions

1. Create a new blank Google Doc.
1. Populate the Google Doc with the contents of your submission as required above.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
