# Ops Challenge - Windows Batch Scripting

It could be said that batch scripts are to Windows as bash scripts are to Linux. If you're using basic Windows terminal commands (non-Powershell), then a .bat file is the way to go!

## Objectives

- Students will learn how to use the `ROBOCOPY` command to perform recursive file copy operations.

## Resources

- [How to Use Windows Batch File Commands to Automate Repetitive Tasks](https://www.makeuseof.com/tag/use-windows-batch-file-commands-automate-repetitive-tasks/){:target="_blank"}
- [Wikibooks: Windows Batch Scripting](https://en.wikibooks.org/wiki/Windows_Batch_Scripting){:target="_blank"}

## Tasks

### Part 1: Staging

Using the Windows Command Line in a Windows 10 VM, create the following folder structure and files:

```makefile
C:\Users\<YourUsername>\Desktop\Ops201
├── labs
│   ├── data_restoration.md
│   ├── cloud_virtualization.md
│   └── malware_remediation.md
├── challenges
│   ├── bash_domain_analyzer.sh
│   ├── powershell_IP_analysis.ps1
│   └── automated_endpoint_config.sh
└── notes
    ├── imaging_backup_recovery.txt
    ├── workstation_deployment_SOP.txt
    └── system_log_analysis.txt
```
Print the created file structure using the `dir` command to review your work.

### Part 2: Write a Batch File

Using the IDE of your choice, create a Windows Batch File that automates the copy operations of a user's files using `ROBOCOPY`.

- Create a Batch File named "RecursiveCopy.bat" that performs the following tasks:
  - Prompt the user to input the source folder path.
  - Prompt the user to input the destination folder path.
  - Implement error handling mechanisms to notify the user if the source or destination folder paths are invalid.
  - Uses `ROBOCOPY` to copy files and subdirectories from the source folder to the destination folder.
    - **QUESTION**: In a real-world scenario, where is the optimal destination for storing backup files? Justify your choice(s) in a comment at the bottom of your script.
- Use the file structure you created in the previous step for testing your script. Try to copy it to a different location.

### Part 3: Push to GitHub

Since your Ops Challenge repository is stored locally on your Ubuntu Server, the most convenient way to submit the assignment is by logging in to GitHub on your Windows VM.

Once you have successfully logged into your GitHub profile on the Windows VM, create a new file in your Ops Challenge repository. Copy and paste your batch script into the new file and save it with the appropriate file extension.

Before you can ACP changes from your Ubuntu Server again, make sure to synchronize the changes you made while using the Windows VM to avoid conflicts. To achieve this, run `git pull` from the terminal before you begin any new tasks in your local repository on your Ubuntu Server.

## Stretch Goals (Optional Objectives)

- Log the details of the copy operation to a `CopyLog.txt` file within the destination folder. Details might include:
  - Source and Destination Paths
  - Number of Files and Directories Copied
  - Timestamp
  - Duration of the Copy Operation
  - Success/Failed Copy Status
  - Error Messages
  - User or Process Information
- Allow the user to specify additional options for the `ROBOCOPY` command, such as excluding certain file types or directories from the copy operation.
- Implement a confirmation mechanism to confirm the copy operation with the user before proceeding.

