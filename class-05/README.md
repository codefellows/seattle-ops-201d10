# Class 05

## Class Outline

1. Review
1. Lecture
    - Ops Challenge: Loops
    - Windows CLI Tools
    - Samba File Server
    - Initializing Processes
1. Demo
    - Windows Command Line Tools
1. Lab & Ops Challenge

## Overview

Proficiency with the Windows command line will help you accomplish a variety of diagnostic operations. Today you will resolve a computer service outage, practice various tools in command line, as well as establish network connectivity to a Samba file server.

## How does this topic fit?

**Where we've been**:
In the previous class we introduced troubleshooting techniques in order to more effectively and efficiently solve issues.

**What are we focusing on today**:
Today, we'll be learning Windows Command Line Tools and how to interact with a Linux Samba share.

**Where we're headed**:
Next class we'll be exploring security features in Windows, specifically Defender and Firewall, as well as looking at task management and basic networking.

## Windows Command Line Tools

### Why
- Command Line Tools allow you to perform tasks more efficiently and quickly than navigating through graphical user interfaces. With the right commands, you can execute complex operations with just a few keystrokes.
- Command Line Tools enable you to automate repetitive tasks and batch process multiple commands. This saves time and effort, especially when dealing with large-scale operations.
- The command line provides powerful tools for diagnosing and troubleshooting system issues. It allows you to access detailed information about processes, network connections, disk health, and system resources, making it easier to identify and resolve problems.
- Command Line Tools can be used for remote management of other computers on the network. This is particularly useful for system administrators who need to manage multiple machines from a central location.
- Some advanced features and configurations are only accessible through the command line. Learning these tools grants you access to a wider range of functionalities and customization options.
- Command Line Tools consume fewer system resources compared to graphical user interfaces, making them suitable for running on systems with limited processing power or memory.
- Command Line Tools have been a part of Windows for decades, ensuring backward compatibility and consistent behavior across different Windows versions.
- Command Line Tools provide administrators with precise control over system settings, user accounts, and permissions, enabling them to manage security effectively.
- Proficiency in Command Line Tools is highly valued in IT and technical roles. Learning these tools can boost your resume and open up new career opportunities.

### What
- `_______` runs the System File Checker tool to identify and repair system file integrity issues.
- `_______` runs the Check Disk tool that scans disk drives for health issues.
- `_______` runs a Group Policy Updater tool.
  - Checks for any group policy updates and applies them immediately if `/force` is specified.
- _______ is the process of allowing multiple users to access and modify files stored on a shared storage device or network location.
- _______ is the ability of software to work and communicate seamlessly across different operating systems or platforms.
- _______ is a security measure that ensures data is encrypted from the sender to the receiver, protecting it from unauthorized interception or tampering.
- _______ is a term used to describe a feature, protocol, or software version that is no longer recommended for use due to security vulnerabilities or other reasons.
- _______ is the ability of different systems or software to work together and interact without issues.
- _______ is the ability of different systems or software to exchange and use information with each other.
- _______ is the process of sending and receiving data between devices or systems over a network.
- _______ is the act of capturing and accessing data without proper authorization.
- _______ is unauthorized modification or alteration of data during transmission or storage.
- _______ are individuals or entities attempting to exploit security vulnerabilities to gain unauthorized access to systems or data.
- _______ is the efficiency and speed at which a system or software performs tasks and processes data.
- _______ is the underlying framework and components that support information technology services and operations within an organization.
- _______ are the computers or devices dedicated to storing and managing files for network users.
- _______ is the act of starting or launching processes in a computer system, making them active and ready to perform their designated tasks.
- _______ is a file format in Windows that contains machine code and can be directly executed by the operating system to run a program or application.
- In computing, a _______ refers to a program or application that is currently being executed by the computer's CPU and is actively performing a specific task.

### How
- Permanently resolve a black desktop problem.
  - Complete a Spiceworks ticket for the issue.
- Using Windows Command Prompt, you will:
  - perform a scan with System File Checker.
  - perform a Check Disk operation.
  - run a group policy update.
  - mount a drive that represents the Samba file server network share.

### Experimentation and Discovery Ideas
- Why do you think command line tools are still relevant in today's world of advanced graphical interfaces? Can you envision specific scenarios or tasks where using the command line might be more efficient or powerful than using a graphical interface?
- In the world of command line tools, commands are often followed by various parameters. Why might a command require parameters, and how might they influence the outcome of a command? Can you think of examples where using different parameters could yield different results for the same command?
- One of the strengths of command line tools is their potential for scripting and automation. Why might this be important, and how could it benefit individuals or organizations? Can you imagine a situation where you might want to automate a series of tasks using command line scripts?
- Learning to effectively use command line tools often involves a learning curve. Why do you think some individuals are drawn to mastering the command line despite this initial complexity? What might be the rewards of investing time in learning these tools deeply?
- Many command line tools are open source, allowing for collaborative development and customization. How might this open nature of command line tools foster innovation and learning? Can you think of ways in which you could contribute to or benefit from open source command line projects?
- Command line tools are frequently used in tasks related to system administration and security. Why might this be the case? Can you envision situations where command line tools are essential for managing and securing computer systems?

## Learning Objectives

### Students will be able to

#### Describe and Define

- Network Protocol
- SMB
- Samba
- System File Checker
- CheckDisk
- Network File Sharing
- CIFS
- TCP/IP
- AES encryption
- Run app
- Command Prompt
- Task Manager

#### Execute

- Use a loop in a Bash script
- Lookup and halt a process in Bash
- Mount a network drive in Windows 10 from Command Prompt
- Troubleshoot a major user interface issue in Windows 10
- Run System File Checker and CheckDisk from Command Prompt

## Helpful Resources

- [A+ Certification Cheat Sheet](https://gcit.enschool.org/ourpages/auto/2017/8/2/56105037/220%20901%20Cheat%20Sheet%202017.pdf){:target="_blank"}
- [Microsoft Docs: Windows Commands](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands#s){:target="_blank"}
- [Spiceworks Hepdesk Guide](https://community.spiceworks.com/support/help-desk-cloud-edition/start){:target="_blank"}
- [How to Map Network Drives From the Command Prompt in Windows](https://www.howtogeek.com/118452/how-to-map-network-drives-from-the-command-prompt-in-windows/){:target="_blank"}

## Notes

- Experiment with different commands and their various options to understand how they work.
  - Try using the `help` command to explore available options and functionalities.
- How can you run the command prompt as an administrator?
- Use commands like `systeminfo,` `tasklist,` and `netstat` to gather information about your system's hardware, software, running processes, and network connections.
- What does the `shutdown` command do, and how can you use it to restart a computer?
- What is the purpose of the `diskpart` command, and what options are available for managing storage devices?
- What is the purpose of the `format` command, and what should you be cautious about when using it?
- Experiment with networking commands like `ping,` `tracert,` and `ipconfig` to troubleshoot network connectivity and diagnose network-related issues.
