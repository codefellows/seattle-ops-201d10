# Windows Command Line Tools

## Overview

Proficiency with the Windows command line will help you accomplish a variety of diagnostic operations. Today you will resolve a computer service outage, practice various tools in command line, as well as establish network connectivity to a Samba file server.

## Scenario

Lisa Daniels, the VP of Fulfillment, is reporting a serious malfunction today.

Lisa writes, "Hi team, I'm unable to use my computer right now. The screen's black. This happened after I downloaded a spreadsheet as an email attachment from our regional supplier; I unzipped the files to My Documents and then my computer prompted me to reboot, so I did. Now I just see a cursor and that's it. I hope I didn't get hacked...I'm going to borrow a laptop for the day, so no huge rush. One more thing, if you can connect me up to the file server, that would be super helpful! Thanks!"

Furthermore, her system is due for maintenance, so let's resolve the immediate issue in addition to performing routine software maintenance. We should also mount a drive that represents the file share, as requested.

### Systems Credentials

- ops201-class05-vp.ova is Lisa's Windows 10 Pro computer
  - admin / solarwinds123
  - Lisa Daniels / waffles

- ops201-class05-fileserv.ova is a Ubuntu Server 20.10 running a Samba file server and sharing a folder called "sambashare"
  - fileserv / fileserv

## Objectives

- Permanently resolve the black desktop problem
  - Complete a Spiceworks ticket for this issue

- Using Windows Command Prompt:
  - Perform a scan with System File Checker
  - Perform a Check Disk operation
  - Run a group policy update
  - Mount a drive that represents the Samba fileserv network share

## Resources

- [ops201-class05.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}
  - Note that this contains two VMs when imported
- [Microsoft Docs: Windows Commands](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands#s){:target="_blank"}
- [Spiceworks Hepdesk Guide](https://community.spiceworks.com/support/help-desk-cloud-edition/start){:target="_blank"}
- [How to Map Network Drives From the Command Prompt in Windows](https://www.howtogeek.com/118452/how-to-map-network-drives-from-the-command-prompt-in-windows/){:target="_blank"}

## Tasks

### Part 1: Staging

- Download both VMs from the single [ops201-class05.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"} and import into VirtualBox.
- Configure the VM settings on each machine:
  - Place both VMs onto a NAT Network configuration.
    > You may need to create a NAT Network -- do this in File > Preferences > Network.
  - Change USB Controller to 1.1
- Identify the IP address of each VM by logging into them individually.
- Use ping to test the VMs can see each other on the same NAT Network LAN.

### Part 2: Restoring the Desktop

For this portion of the lab only, complete all documentation in the Spiceworks ticketing system. As you take steps to resolve the problems, make note in the corresponding ticket. All relevant pictures you take along the way should be uploaded and attached to the ticket as well.

Once you have resolved a problem, take thorough screenshots of the ticket you created in Spiceworks and include *those* screenshots in your lab write-up. You can include any extra commentary or explanation you think would be helpful, but it is not required.

- First, resolve the black desktop issue.
  - Permanently resolve the issue, if possible, so that it does not reoccur on login for any user.
  - Explain: What caused the issue?
  - Screenshot the location of the offending file(s) and configuration.

> Remember that not all solutions will permanently resolve an issue like this one. Double check that you have truly resolved the issue for all users.
> You can enter special key-combinations into a VM form the Input dropdown menu.

### Part 3: General System Maintenance

The remaining tasks in this lab should only be completed in the Windows Command Prompt. There are GUI tools which accomplish some of the same purposes, but they are often not as flexible or powerful.
> Note: You do *not* need to use Spiceworks for Part 3 or 4.

- Perform a scan with System File Checker from command prompt.
  - In your submission doc:
    - Explain: What does this operation accomplish?
    - Screenshot the completed terminal.
- Perform a Check Disk operation from command prompt.
  - In your submission doc:
    - Explain: What does this operation accomplish?
    - Screenshot the completed terminal.
- Run a group policy update from command prompt.
  - In your submission doc:
    - Explain: What does this operation accomplish?
    - Screenshot the completed terminal.

### Part 4: Mounting a Network Drive

> Note: You do *not* need to use Spiceworks for Part 3 or 4.

- Use the command prompt to mount a drive (`S:`) that represents the *fileserv* network share; note that the protocol in use here is SMBv1, and the network path is `\\[ip of fileserv]\sambashare`. Lisa will be logging in with fileserv / fileserv credentials and expects the drive to persist after reboot.
  - In your submission doc:
    - Explain: Does the drive persist after reboot? Why or why not?
    - What security concerns do you have with this configuration? How would you setup the Samba server differently?
    - Screenshot the completed drive mount and how you did it (note that you must use the command prompt for this part of the assignment).

> Having trouble getting the drive to appear in File Explorer? Think about what kind of protocol you're using, as it relates to Windows 10.

## Submission Instructions

1. Create a new blank Google Doc. Include above assignment submission text and images within this Google Doc.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
