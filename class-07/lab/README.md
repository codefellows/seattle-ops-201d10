# OS Upgrade and Remote Access

## Overview

Some basics you'll need to succeed in supporting Windows-based systems include handing different versions of the OS, as well as establishing RDP connectivity.

Powershell can be used to remotely issue commands on another capable computer. This technique is utilized by systems administrators to avoid intrusive "desktop takeover" support sessions as well as malicious attackers to alter computer configurations from a distance by "opening a shell."

In today's lab you will communicate between two Windows 10 VMs using Powershell.

## Resources

- [How to Run PowerShell Commands on Remote Computers](https://www.howtogeek.com/117192/how-to-run-powershell-commands-on-remote-computers/)

## Scenario

Larry Moseman: "Hello tech team, I've been putting off the upgrade to Windows 10 for months but now I need it to run some specialized software. I need to keep my existing user profile data though. I'll be gone all day so it's yours to tinker with!"

In addition to Larry's requests, you are prepping his computer today to be remote-administratable by your team using Powershell. The systems administrator at your company recently notified you that Larry's computer in shipping is not remotely accessible via Powershell and therefore does not conform to SOP in the company.

### Systems Credentials

- ops201-class07.ova
  - Admin: admin / solarwinds123
  - User(local): shipping / vegetarian123

> If you see any Windows activation prompts, click "Ask me later" and "OK" to bypass them.

## Objectives

- Resolve Larry's technical requests on his system.
- Configure Larry's computer for support remote Powershell commands.
- Issue a remote command from one Windows 10 VM to another using PowerShell.

## Resources

- [ops201-class07.ova and Windows 10 ISO](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}
- [Microsoft Docs: Invoke-Command](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/invoke-command?view=powershell-7.1)
- [Guide to running remote PowerShell commands on a Workgroup](https://www.howtogeek.com/117192/how-to-run-powershell-commands-on-remote-computers/)

## Tasks

### Part 1: Staging

#### **Staging for Part 2:**

- Download and import [ops201-class07.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}. into VirtualBox.

#### **Staging for Part 3:**
For Part 3, you'll need to two Windows 10 VM in VirtualBox concurrently. You can use the same machine from Part 2 (once it has been upgraded to Windows 10), or you can clone or import another Windows 10 VM.
> If you choose to clone or import a Windows 10 VM, be sure to generate new MAC addresses for the NICs.

On each Windows 10 VM:
- Adjust the RAM and CPU settings downward so two can be run comfortably on the host machine.
- Configure each VM's network settings to either Bridged mode or NAT Network.
  - Run `ipconfig` on both machines to ensure that they are on the same subnet.
- Set network to Private (not Public).
  > Use [this guide](https://www.howtogeek.com/245982/whats-the-difference-between-private-and-public-networks-in-windows/){:target="_blank"} as a reference.

### Part 2: Install Windows 10

We need to move Larry to Windows 10. Due to licensing constraints we can't directly perform an in-place upgrade.
- Shrink the existing C: partition.
- Create a spare partition.
- Copy Larry's entire user folder to the spare partition you created.
- Boot into Win10 ISO and install clean. You'll need to format C: partition to make way for Win10.
- Create Larry a new Shipping user and copy his data back in.

### Part 3: Perform a Remote PS Command

For this part, we will be issuing PowerShell commands from one Windows 10 VM (the origin) to another (the remote) using the `Invoke-Command` Cmdlet.

> If you have trouble making the connection, try disabling Windows Firewall on both machines.

- On each VM, open PowerShell as admin and run the following commands in this order:
  - `Enable-PSRemoting -Force`
    > If you encounter an error at this step, you may need to run `reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f` to clear the error, then try again.
  - `Set-Item wsman:\localhost\client\trustedhosts *`
    > If you encounter an error at this step, you may need to start the `WinRM` service first by running `Start-Service WinRM`, then trying trying the `Set-Item` command again.
  - `Restart-Service WinRM`
- On the origin VM, run `Test-WsMan <IP of remote>` to test the connection
- Issue an `Invoke-Command` to run `ipconfig` and document how this went.
  > If you are unsure of the right syntax to run this cmdlet, use google and the linked resources in this lab to look up the appropriate documentation.

## Wrapup

Delete ops201-class07 VM and .ova file.

## Stretch Goals (Optional Objectives)

Are there any security concerns with Larry's request to have RDP access?

## Submission Instructions

1. Create a new blank Google Doc. Include above assignment submission text and images within this Google Doc.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
