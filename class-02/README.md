# Class 02

## Class Outline

1. Review
1. Lecture
    - Bash
    - SSH
    - VS Code
1. Demo
    - ACP workflow
1. Lab and Ops Challenge

## Overview

Git and VS Code will come in handy as we progress through the Ops program. Git lets us manage our GitHub repositories via command line, and VS Code is an industry standard IDE for coding purposes.

## How does this topic fit?

**Where we've been**:
In the previous class we learned how to manipulate OVAs, VirtualBox snapshots, and use Windows System Restore.

**What are we focusing on today**:
Today, we'll be using industry standard development tools such as Git, Github, and Visual Studio Code to help us complete Ops Challenges throughout the program. The first Ops Challenge assignment will be introduced.

**Where we're headed**:
Next class will focus on using issue tracking systems to manage and resolve a technical workload as part of routine service desk operations.

## Dev Tools

### Why
- The Shell, Shell Scripting, and Bash:
  - The shell is a program that translates text commands from the user into instructions for the OS to perform.
    - The default shell in the Linux OS is called Bash.
  - Since shell commands are just text, multiple shell commands can be saved in a text file, and the computer can be instructed to execute them one at a time. Such a file is called a shell script.
    - Shell scripting allows IT professionals to automate repetitive tasks, increasing productivity and efficiency in managing systems and performing administrative tasks.
    - With shell scripting, IT professionals can create customized workflows and solutions tailored to their specific needs, making complex tasks easier to manage.
- Git:
  - Git enables IT professionals to track changes in code and configuration files, ensuring that they can easily revert to previous versions when needed. It also allows for collaboration within teams, preventing conflicts and facilitating code reviews.
  - The ability to create branches in Git allows IT professionals to work on different features or bug fixes simultaneously without affecting the main codebase.
  - Git provides a reliable method to deploy code to production environments, reducing the risk of errors and ensuring the stability of applications.
- GitHub:
  - GitHub serves as a centralized platform for version control and collaboration. IT professionals can work together on projects, share code, and contribute to open-source projects, fostering knowledge-sharing and community involvement.
  - GitHub's issue tracking system helps IT professionals manage and prioritize tasks, track bugs, and communicate effectively within development teams.
  - GitHub integrates with CI/CD tools (Continuous Integration and Continuous Deployment), automating the testing and deployment processes, which streamlines development workflows and improves software quality.
- Visual Studio Code (VS Code):
  - VS Code is a feature-rich integrated development environment (IDE) and code editor that provides essential tools, extensions, and debugging capabilities, making it a valuable tool for writing, editing, and managing code.
  - VS Code supports a wide range of programming languages, allowing IT professionals to work with various technologies and frameworks.
  - VS Code is highly customizable, allowing IT professionals to tailor their coding environment to their preferences and needs, enhancing productivity.

### What
- _______ is a Unix shell and command language used as the default shell on most Linux distributions.
- _______ is a network protocol that provides a secure way to access and manage remote devices over an unsecured network.
- _______ is an integrated development environment (IDE) and code editor developed by Microsoft, widely used for coding and programming tasks.
- _______ stands for "Add, Commit, Push" workflow in Git. It's the process of adding changes to a Git repository, committing them with a meaningful message, and pushing those changes to a remote repository.
- _______ is a distributed version control system used for tracking changes in source code during software development.
- _______ is a web-based platform for version control and collaboration using Git. It provides tools for managing repositories, code review, and issue tracking.
- _______ is a software application that provides comprehensive facilities for software development, including coding, debugging, and version control.
- _______ is the process of writing and executing scripts using a command-line shell, like Bash, to automate tasks.
- _______ is the use of technology and tools to perform tasks without manual intervention.
- _______ stands for "GNU's Not Unix." It refers to the collection of free software and open-source tools developed by the GNU Project.
- _______ is the symbol combination "#!" used at the beginning of script files to specify the interpreter that should be used to execute the script.
- _______ is a simple and user-friendly text editor often used in command-line environments.
- _______ is an extension in VS Code that allows you to remotely access and develop on a machine using SSH.
- _______ is creating a copy of a repository, including all its code history and branches, to your local machine.
- _______ is the practice of tracking and managing changes to software code, allowing collaboration and easy recovery of previous versions.
- _______ is the process of reviewing code changes by peers to ensure code quality, correctness, and adherence to best practices.
- _______ is the practice of automating the build, testing, and deployment of code changes to ensure frequent and reliable releases.
- _______ is a tool used to manage and track tasks, bugs, and feature requests in software development projects.
- _______ is the setup and tools used by developers to write, test, and debug code.
- _______ is a text-based interface used to interact with a computer's operating system or software using commands.
- _______ are problems that arise when software or scripts are not compatible with different systems or versions.

### How
- Deploy an Ubuntu Server VM as your development environment
- Install SSH and Git on your lab computer
- Install SSH extension on VS Code
  - Where do we go to install extensions on VS Code?
- Access the Ubuntu Server VM remotely from VS Code

### Experimentation and Discovery Ideas
- Why might IT professionals prefer to use shell scripting for automating tasks instead of manually executing commands?
- In what ways might shell scripting enhance productivity and efficiency in managing a network of computers compared to executing individual commands manually?
- Think about the concept of version control. Why is it crucial for development? Can you envision any real-world scenarios where version control beyond programming could be beneficial?
- Reflect on the benefits of being able to revert to previous code versions using Git. How might this contribute to maintaining software stability and managing errors effectively?
- Suppose you're working on an open-source project with contributors from different parts of the world. How does GitHub's platform facilitate collaboration, communication, and knowledge-sharing among this diverse group of developers?
- Consider GitHub's issue tracking system. How might it help development teams manage complex projects with multiple features, bug fixes, and improvements? Can you draw parallels to other contexts outside of software development?
- GitHub integrates with CI/CD tools. Explore how this integration could impact the speed and quality of software releases. Can you think of non-programming scenarios where automation improves processes?
- VS Code supports various programming languages. Why might this flexibility be advantageous for IT professionals working in diverse technical landscapes?
- Visual Studio Code is known for its extensions. Why is extensibility an important feature in an IDE? Can you think of examples from other domains where customization and extensions play a significant role?
- As an IT professional, how could using VS Code's debugging capabilities enhance your problem-solving skills and streamline the identification of issues in code or configurations?
- Can you think of instances where relying solely on automation might lead to missed opportunities for learning and growth? How can these tools be harnessed to strike the right balance?

## Learning Objectives

### Students will be able to

#### Describe and Define

- `ip a`
- `ping`
- `man`
- `|` (pipe)
- `grep`
- `awk`

#### Execute

- Create a lightweight Ubuntu Server 22.04 VM as a development environment
- Install and operate Git
- Remotely connect to the Ubuntu Server through VS Code

## Helpful Resources

- [Learn Bash on Exercism](https://exercism.org/tracks/bash){:target="_blank"}
- [What is a Shell?](https://www.tutorialspoint.com/unix/unix-what-is-shell.htm){:target="_blank"}
- [Shellshock is one of the oldest known bugs in history](https://www.wired.com/2014/09/shellshocked-bash/){:target="_blank"}
- [Remote Development using SSH](https://code.visualstudio.com/docs/remote/ssh){:target="_blank"}
- [A Cheat Sheet for Git Commands](https://www.cloudways.com/blog/git-cheat-sheet/){:target="_blank"}
- [A Cheat Sheet for Bash](https://devhints.io/bash){:target="_blank"}
- [Ubuntu Server 22.04 ISO](https://ubuntu.com/download/server){:target="_blank"}
- [GitHub](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github){:target="_blank"}
- [VS Code](https://code.visualstudio.com/docs){:target="_blank"}

## Notes

- In 1987, _______ develops a new software program he calls the Bourne Again Shell, or "Bash."
- What is a variable?
- How do scripts execute?
- What can cause a script to fail?
- What are "Bashisms", and why are they favored by Bash users?
  - What are the potential compatibility issues related to them?
- Name some built-in functions that make Bash a popular choice among Linux users.
