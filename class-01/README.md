# Class 01

## Class Outline

1. Welcome and Introduction
1. Tools and Resources
1. Prework Check
1. Review Ops 102
1. Lecture
    - Backup & Restore
1. Demo
    - System Restore
1. Lab
    - Backup Your System

## Overview

Today you'll be introduced to the Ops 201 course, meet your classmates, and get setup on the hardware and software used in this course. You'll learn how to generate your first Bash script from within your Ubuntu Linux virtual machine (VM).

## How does this topic fit?

**Where we've been**:
In the previous course we built and configured our lab computers, installed important tools and applications, established remote connectivity and created your first virtual machine.

**What are we focusing on today**:
Today, we'll be welcoming you to Ops 201 and then we will learn how to manipulate OVAs, VirtualBox snapshots, and use Windows System Restore.

**Where we're headed**:
Next class will focus on using industry standard development tools such as Git, Github, and Visual Studio Code to help us complete Ops Challenges throughout the program. The first Ops Challenge assignment will be introduced.

## Backup Your System

### Why
- Computers can experience hardware failures, software glitches, malware attacks, or accidental deletions that result in data loss. Having a recent backup ensures that you can recover your important files and data in case of any such mishaps.
- In the event of a major system failure, such as a hard drive crash or a virus infection, a backup allows you to restore your system to a previous stable state quickly. This minimizes downtime and helps you get back to work or normal operations faster.
- Ransomware attacks encrypt your files and demand a ransom to unlock them. If you have a backup, you can simply restore your system to a state before the attack occurred, avoiding the need to pay the ransom and reducing the impact of the attack.
- When upgrading or replacing hardware components, like a hard drive or a computer, a backup makes it easier to transfer your data and settings to the new device without losing anything important.
- Backups create a history of your files, allowing you to access previous versions of documents or projects. This can be helpful when you need to revert to an older version due to errors or changes that didn't work out as intended.
- Regular backups are essential for mobile devices like smartphones and tablets, ensuring you can recover important data if the device is lost, stolen, or damaged. Additionally, cloud services often offer backup and sync features, which protect your data across multiple devices and platforms.

### What
- Define these backup strategies:
  - Full
  - Incremental
  - Differential
- Off-site backup strategies:
  - A _______ site is ready at a moment's notice to take over for the failed production site.
  - _______ sites take a long time to spin up but are less costly than hot sites.
  - _______ sites take some time to spin up but not as long as cold sites and have middling costs to maintain.
- System Redundancy:
  - A _______ is a set of servers that work together to deliver the same service.
  - _______ _______ is achieved when redundancy is implemented in case the first server goes down
  - _______ occurs when the primary server fails over to the backup server.
- _______ save the VirtualBox VM in an exact state, allowing you to experiment freely and restore back to that state anytime.

### How
- Create a backup .ova file of a Windows 10 VM and demonstrate an .ova import.
  - How do you create an .ova backup from a virtual machine in VirtualBox?
  - What dictates a "good baseline" for a Windows 10 VM?
- In Windows 10, create a System Restore point and perform a Restore operation.
  - What aspects of the computer are effected by a System Restore? What parts of the system are unaffected?

### Experimentation and Discovery Ideas
- Are there situations where you might not need to back up your data? Why or why not?
- Apart from the traditional backup methods we discussed earlier, can you think of any unconventional ways to ensure data preservation and recovery?
- How might cloud-based solutions alter the way we approach system backups? What are the pros and cons?
- Have you ever encountered a situation where you lost important data due to not having a backup? How did that experience impact you?
- Can you recall a time when a system restore or backup saved you from a major setback? What was the key lesson learned?
- When choosing between full, incremental, and differential backups, what factors would influence your decision? How might the size of your data and available resources play a role?
- In the context of off-site backup strategies, how would you balance the cost-effectiveness of cold, warm, and hot sites with the urgency of system recovery?
- How might the principles of system redundancy be applied to our personal lives or endeavors outside of technology?
- Can you draw parallels between the concept of failover in IT systems and resilience in facing challenges in real life?
- How can user behavior and habits impact the effectiveness of backup strategies? What measures could be taken to ensure consistent and reliable backups?

## Learning Objectives

### Students will be able to

#### Describe and Define

- OVA
- Baseline
- System Restore
- Save State in VirtualBox

#### Execute

- Access course-related systems such as Slack, GitHub, Canvas, and Spiceworks
- Backup Windows 10 using System Restore
- Import a .ova file into VirtualBox

## Helpful Resources

- [How to Import and Export OVA Files in VirtualBox](https://www.maketecheasier.com/import-export-ova-files-in-VirtualBox/){:target="_blank"}
- [How to Use System Restore](https://www.lifewire.com/how-to-use-system-restore-in-windows-2626131){:target="_blank"}
- Sybex CompTIA ITF+ Study Guide
  - Chapter 11: Business Continuity and Computer Support
    - Data Backups

## Notes

- How can you undo a System Restore in Windows?
- What can happen if you interrupt a Windows 10 System Restore process?
