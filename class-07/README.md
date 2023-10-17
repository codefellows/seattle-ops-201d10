# Class 07

## Class Outline

1. Warm-Up
1. Review
1. Lecture
1. Demo
1. Lab

## Overview

Some basics you'll need to succeed in supporting Windows-based systems include handing different versions of the OS, as well as establishing RDP connectivity.

## How does this topic fit?

**Where we've been**:
In the previous class, we practiced Windows Firewall and Defender.

**What are we focusing on today**:
Today, we'll learn about OS upgrades and how to use Powershell to establish remote access to Windows.

**Where we're headed**:
Next class we will perform log analysis and get into the Windows Registry and Control Panel to do some more low level systems diagnostics and configurations.

## OS Upgrade and Remote Access

### Why
- Upgrading the operating system ensures that you have the latest security patches and updates. New vulnerabilities are constantly discovered, and software vendors release patches to address these security issues. Running an outdated OS increases the risk of being targeted by malware, hackers, and cyberattacks.
- Newer versions of operating systems often come with performance improvements, better resource management, and optimized code, leading to a smoother and more efficient user experience.
- As software and hardware evolve, older operating systems may become incompatible with newer applications and devices. Upgrading the OS ensures compatibility with the latest software and hardware releases.
- Software vendors typically provide support and bug fixes only for the most recent versions of their products. Upgrading the OS ensures that you can receive official technical support when needed.
- OS upgrades introduce new features and enhancements that can improve productivity, user experience, and overall functionality.
- Remote access allows users to connect to their workstations, servers, or networks from anywhere with an internet connection. This flexibility enables remote work, enhances productivity, and accommodates a mobile workforce.
- IT professionals can remotely access systems to diagnose and resolve technical issues without being physically present, reducing downtime and minimizing disruptions.
- Remote access facilitates collaboration among team members, especially when they are located in different geographical locations.

### What
- _______ is the software that manages computer hardware and provides services to applications. Examples include Windows, macOS, Linux, etc.
- _______ is the different releases of an operating system, often denoted by numbers or names (e.g., Windows 10, macOS Catalina).
- _______ is a modification to an existing version of the OS, usually to fix bugs or add minor features.
- _______ is the process of moving from an older version of the OS to a newer one, often involving significant changes and enhancements.
- _______ is a small software update aimed at fixing specific issues or vulnerabilities in the OS.
- _______ is a collection of updates and fixes bundled together to improve the stability and security of an OS.
- _______ is the ability of software or hardware to work correctly with a specific OS version.
- _______ is the reverting an OS upgrade to the previous version if issues arise after the update.
- _______ is the creating a copy of important data before performing an OS upgrade to avoid data loss in case of problems during the process.
- _______ is the minimum hardware and software specifications an OS version needs to operate correctly.
- _______ is the ability to connect to a computer or network from a distant location using communication technologies like the internet or virtual private networks (VPNs).
- _______ is a feature that allows users to access and control a computer remotely as if they were sitting in front of it.
- _______ is a secure network connection that encrypts data traffic between the user's device and the remote network, ensuring privacy and security.
- _______ is a protocol used for remote desktop connections in Windows-based systems.
- _______ is a cryptographic network protocol used for secure remote access to servers and other network devices.
- _______ is a remote access technology that enables users to view and interact with the desktop of a remote computer.
- _______ is a security measure that requires users to provide two different forms of identification before gaining remote access.
-_______ is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules.
- _______ is a connection established between the user and the remote system during a remote access session.
- _______ is configuring a network router to allow incoming remote access connections to a specific port on a local machine.

### How
- In today's lab you will:
  - resolve a client's technical requests on their system.
  - configure a client's computer to support remote Powershell commands.
  - issue a remote command from one Windows 10 VM to another using PowerShell.

### Experimentation and Discovery Ideas
- What are some immediate benefits that a company might expect from upgrading its operating system? How might these benefits extend to the employees' daily tasks and overall efficiency?
- As we contemplate remote access implementation, what are some potential advantages for both the company and its employees? Conversely, can you identify any drawbacks or concerns associated with enabling remote access to the company's systems?
- In the context of upgrading an operating system, what factors should a company take into account to ensure a smooth transition? How might these factors differ based on a company's size, industry, and the nature of its operations?
- Considering the potential security risks tied to both operating system upgrades and remote access, how can the company strike a balance between enhancing efficiency and maintaining robust cybersecurity? What strategies might help in mitigating potential vulnerabilities?
- Let's explore the perspective of an employee working remotely. How might this new remote access capability influence their work-life balance? Can you envision any scenarios where remote access could lead to either increased job satisfaction or potential burnout?
- Change can often be met with resistance. If employees express concerns about the operating system upgrade or the implementation of remote access, how can the company address these concerns effectively and create a sense of ownership among the workforce regarding these changes?
- In the spirit of continuous improvement, what mechanisms should the company put in place to gather feedback from employees about the upgraded operating system and remote access tools? How could this feedback loop contribute to refining the implementation and addressing any unforeseen challenges?

## Learning Objectives

### Students will be able to

#### Describe and Define

- Windows editions
- RDP
- `grep`
- Pipe (`|`)
- Powershell

#### Execute

- Upgrade from Windows 7 to Windows 10
- Setup RDP access to Windows 10

## Helpful Resources

- [How to Upgrade to Windows 10 From Windows 7 for Free](https://www.howtogeek.com/509087/how-to-upgrade-from-windows-7-to-windows-10-for-free/)
- [How to enable and use remote desktop in Windows 10](https://www.techradar.com/how-to/how-to-enable-and-use-remote-desktop-in-windows-10)
- [Microsoft Docs: Invoke-Command](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/invoke-command?view=powershell-7.1)

## Notes

### Powershell
PowerShell is a powerful command-line shell and scripting language designed for Windows systems. It allows you to interact with the operating system, manage system configurations, automate tasks, and perform various administrative tasks.

**Open PowerShell**
- Press the "Windows + X" keys on your keyboard.
- From the context menu that appears, select "Windows PowerShell (Admin)" to open PowerShell with administrative privileges. Administrative privileges are required for certain tasks, such as managing system settings.

**Get Familiar with the PowerShell Prompt**
- Once PowerShell opens, you'll see a prompt that looks like this:
```
PS C:\Users\YourUsername>
```
- The "PS" indicates that it's PowerShell, followed by the current working directory (e.g., "C:\Users\YourUsername"). This is where the commands will be executed.

**Basic Commands**
- Type the following and press Enter:
```
Get-Process
```
- This command will list all the running processes on your system, along with their details.

**Get Help**
- PowerShell provides extensive help for commands. To get help for a specific command, use the `Get-Help` cmdlet. For example, to get help for the `Get-Process` command, type:
```
Get-Help Get-Process
```
- The help information will display in the console, explaining the usage and available parameters for the command.

**Getting System Information**
- You can retrieve various system information using PowerShell.
```
Get-ComputerInfo
```
- This command will provide detailed information about your computer, such as the OS version, hardware, and more.

**Listing Files and Directories**
- To list files and directories in the current directory, use the `Get-ChildItem` cmdlet (alias `ls` or `dir`):
```
Get-ChildItem
```
- This will display the list of files and directories in the current folder.

**Changing Directory**
- To change to a different directory, use the `Set-Location` cmdlet (alias `cd`):
```
Set-Location C:\Path\To\Your\Directory
```

**Creating a New Folder**
- To create a new folder, use the `New-Item` cmdlet with the `-ItemType` parameter set to "Directory":
```
New-Item -ItemType Directory -Path "C:\Path\To\Your\NewFolder"
```

**Running Executables**
- You can run executables using PowerShell. For example, to open Notepad, type:
```
Start-Process notepad.exe
```

**Stopping Processes**
- You can stop a running process using the `Stop-Process` cmdlet. First, get the process ID using `Get-Process`, and then stop the process using its ID:
```
$process = Get-Process -Name "ProcessName"
Stop-Process -Id $process.Id
```

**PowerShell Variables**
- You can create and use variables in PowerShell. For example, to store a number in a variable and perform some calculations:
```
$number = 42
$result = $number * 2
Write-Host "Result: $result"
```

**PowerShell Scripts**
- You can create and run PowerShell scripts to automate tasks. Create a new text file with a `.ps1` extension and write your PowerShell commands inside. Save the file, then open PowerShell, navigate to the file location, and run the script using the `.\` notation:
```
.\YourScript.ps1
```

### `Invoke-Command`
The `Invoke-Command` cmdlet in PowerShell allows you to run commands or scripts on remote computers. It is a powerful tool for remote management and automation, enabling you to execute PowerShell commands on one or multiple remote machines without needing to log in to each one individually. This cmdlet is particularly useful for administrators managing multiple systems in a networked environment.

Here's an explanation of the main aspects of the `Invoke-Command` cmdlet:

**Syntax:**
```
Invoke-Command [-ScriptBlock] <ScriptBlock> [-ComputerName] <String[]> [-Credential <PSCredential>]
```

**Parameters:**
- `ScriptBlock`: This is the mandatory parameter that defines the script or command that you want to run on the remote computer. It is specified as a script block, enclosed within curly braces `{}`. The commands inside the script block will be executed remotely.

- `ComputerName`: This parameter specifies the remote computer or a list of remote computers on which the script block will be executed. You can provide a single computer name as a string or an array of computer names.

- `Credential`: This optional parameter allows you to specify the credentials of a user account with sufficient privileges to run the command on the remote computer. If not provided, the current user's credentials will be used.

**Example:**
```powershell
Invoke-Command -ComputerName "Server01" -Credential "Domain01\AdminUser" -ScriptBlock {
    Get-Process
}
```

**Explanation:**
In this example, the `Invoke-Command` cmdlet connects to "Server01" using the specified credentials and runs the `Get-Process` cmdlet on the remote machine. The results of the `Get-Process` cmdlet execution on "Server01" are then returned to the local computer.

**Additional Notes:**
- If you want to run the command on multiple remote computers simultaneously, you can provide an array of computer names to the `ComputerName` parameter.
- The `Invoke-Command` cmdlet also supports using session objects created by the `New-PSSession` cmdlet to run commands on remote computers. This allows you to establish a persistent connection to a remote machine, reducing the overhead of establishing a new connection each time.
- When using `Invoke-Command`, make sure the target computers have PowerShell remoting enabled. PowerShell remoting uses the WS-Management protocol (WinRM) to execute commands remotely. By default, newer versions of Windows have PowerShell remoting enabled, but you may need to configure it for older systems.
- If you encounter issues with remote execution, verify that the appropriate firewall rules and permissions are set up to allow PowerShell remoting between the machines.
