# Dev Tools

## Overview

Git and VS Code will come in handy as we progress through the Ops program. Git lets us manage our GitHub repositories via command line, and VS Code is an industry standard IDE for coding purposes.

We aren't training to be expert coders, but we will practice Python, Powershell, and Bash scripting throughout the Ops program. Like a developer's computer, we'll need essentials like Git and VS Code loaded up and ready to go.

## Objectives

- Deploy an Ubuntu Server VM as your development environment
- Install SSH and Git on the dev box
- Install VS Code
- Install SSH extension on VS Code
- Access the Ubuntu Server VM from VS Code

## Resources

- [Remote Development using SSH](https://code.visualstudio.com/docs/remote/ssh)
- [A Cheat Sheet for Git Commands](https://www.cloudways.com/blog/git-cheat-sheet/)
- [Ubuntu Server 22.04 ISO](https://ubuntu.com/download/server)

## Tasks

### Part 1: Deploy Ubuntu Server

> If you have not already, download the [Ubuntu Server 22.04 ISO](https://ubuntu.com/download/server).

First, create a Ubuntu Server VM on VirtualBox. 
- 1 core and 1gb of RAM is fine.
- Put the VM on bridge mode. 
- During the "Guided storage configuration" step of OS installation, unselect the option "Set up this disk as an LVM group".
- Once installation is complete, don't forget to run `sudo apt update` and `sudo apt upgrade` to make sure everything is up to date.

Establish SSH connectivity from your personal system to the Ubuntu Server VM. **Include screenshots of your SSH connectivity.**

Here is the desired topology:

![class-02-diagram](../assets/class-02-diagram.jpg)

### Part 2: Installing and Using VS Code IDE and the Remote - SSH extension

Let's also connect from within Microsoft Visual Studio Code, an industry standard IDE for software development, running on your personal system.

- Install VS Code, according the instructions for your OS.
- Within the VS Code Extensions Marketplace, install the `Remote - SSH` extension.
- Setup an SSH connection to access your developer VM using the `Remote - SSH` extension.
  - Check out the [SSH Extension documentation](https://code.visualstudio.com/docs/remote/ssh){:target="_blank"}.
- Confirm that you have connected the VS Code running on your home computer to your Ubuntu Server VM (provide a screenshot). 
- **Include screenshots of your VS Code setup.** You should see a small box in the lower left corner that reads `SSH: <IP address of your VM>`, the built-in terminal will show a bash command line, and when you open a folder you should recognize the Linux file structure.

**The rest of this lab will be done through this remote connection.**


### Part 3: Installing and Using Git

Git will be essential for pulling down repositories to our box. We'll need this capability, because many security tools and open-source applications are stored in GitHub repositories.

**Include screenshots of your Git workflow.**

First, log into your Github.com account and perform the following steps:
- Create a new public repository to use for your Code Challenges (ex: ops-201d7-code-challenges).
- Create a README.md markdown file in that repository.
- Click the green "Code" button and copy the "HTTPS" address there (NOT the SSH address).

Now return to your VS Code with is remotely connected to your lab computer, open the integrated terminal, and take the following actions:
- `git` should come installed on Ubuntu Server by default, but to be sure run `git --version`. If `git` is not installed, run `sudo apt update` and `sudo apt install git`.
- Clone down the repository you just created `git clone <the HTTPS address you just copied>`.
- Use the text editor within VS Code to add some text to the README.md file.


Now use VS Code's terminal to ACP (`git add`, `git commit`, `git push`) by running the following commands in order:
- > Optional: `git status` will show that you have changed a file, but the change is unstaged.
- `git add .`
- >Optional git status will show you that the changed file is now staged.
- `git commit -m "this is my first commit"`
- Git may give you an error message requiring you to set your username and email before it will let you commit. Read the error message closely and follow the instructions.
- `git push`
- VS Code will prompt you to [Authenticate to GitHub](https://code.visualstudio.com/docs/editor/github#_authenticating-with-an-existing-repository).

Congratulations! You've just pushed your local changes up to the remote! Refresh your Github and you should see the text you added README.md file is now there. **Include a screenshot of this successful outcome.**

## Submission Instructions

1. Create a new blank Google Doc.
1. Populate the Google Doc with the contents of your submission as required above.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
