# Ops Challenge - Windows Batch Scripting

Windows Batch Scripting is a way to automate tasks and run sequences of commands in the Windows operating system using batch files with the `.bat` extension. Remember, if you're using Powershell, your script file will have a `.ps1` extension to let Windows know it needs to execute the file with Powershell. Batch files are simple text files containing a series of commands written in the Windows Command Prompt language, which is similar to MS-DOS commands.

The primary purpose of batch scripting is to automate repetitive tasks, perform system administration tasks, and execute multiple commands in a sequence. It allows users to combine various commands, conditionally execute them, and perform loops and other control structures.

Batch scripts are commonly used for tasks such as file management, backups, network configurations, software installations, and more. They are especially useful when you need to execute the same set of commands regularly or across multiple machines.

**Basic Syntax:**

A typical Windows batch script is a plain text file that contains a series of commands, with each command on a separate line. Here's a simple example:

```batch
@echo off
echo Hello, this is a batch script.
pause
```

In this example, we have two commands:

1. `@echo off`: This turns off the command echoing, so the commands themselves won't be displayed in the console as they execute. It makes the output cleaner, easier to read.
2. `echo Hello, this is a batch script.`: The `echo` command is used to display a message on the console.
3. `pause`: The `pause` command pauses the script execution and waits for the user to press any key before continuing. This is helpful to keep the console window open after the script execution.

**Variables and Environment Variables:**

Batch scripts can use variables to store and manipulate data. You can set variables using the `set` command and access their values using `%VariableName%`. Additionally, Windows provides several environment variables with predefined values, like `%USERPROFILE%`, `%TEMP%`, `%COMPUTERNAME%`, etc.

**Control Structures:**

Batch scripts can use various control structures for conditional branching and looping:

1. `if` statement: Used for conditional execution based on the result of a comparison.
2. `for` loop: Used for iterating through a list of items or files.
3. `goto` statement: Used for unconditional branching to a specific label within the script.

**Error Handling:**

Batch scripts can handle errors and take different actions based on the result of a command's execution. This is often achieved using error codes and conditional statements.

**Executing Other Programs:**

Batch scripts can execute other programs or scripts using commands like `start`, `call`, or directly invoking the program's executable.

## `ROBOCOPY`

`ROBOCOPY` (Robust File Copy) is a powerful built-in command in Windows that allows you to perform advanced file and directory copying operations with additional features beyond what the standard `COPY` and `XCOPY` commands offer. `ROBOCOPY` is available on Windows Vista and later versions, including Windows Server editions.

The basic syntax of the `ROBOCOPY` command is as follows:

```batch
ROBOCOPY <Source> <Destination> [<File(s)_to_copy>] [<Options>]
```

- `<Source>`: Specifies the source folder or file(s) to be copied.
- `<Destination>`: Specifies the destination folder where the files will be copied.
- `<File(s)_to_copy>` (optional): Specifies a list of specific files to be copied (use wildcards like `*` and `?` for pattern matching). If not specified, `ROBOCOPY` copies all files in the source directory.
- `<Options>` (optional): Specifies various options to control the copying behavior. There are numerous options available to customize the copying process.

Key features and commonly used options of the `ROBOCOPY` command:

1. Recursive Copy (`/E`): The `/E` option tells `ROBOCOPY` to copy subdirectories, including empty ones, making it perform a full recursive copy.

2. Copy All File Information (`/COPYALL`): The `/COPYALL` option copies all file information, including data, attributes, timestamps, security settings, owner information, and auditing information.

3. Copy Timestamps for Directories (`/DCOPY:T`): The `/DCOPY:T` option copies the timestamps of directories along with their contents. This helps to preserve the original creation and modification times of folders.

4. Retry on Failure (`/R:<N>`): The `/R` option specifies the number of retries on failed copies. `<N>` represents the number of retries. For example, `/R:5` sets 5 retries.

5. Wait Time Between Retries (`/W:<N>`): The `/W` option sets the wait time in seconds between retries. `<N>` represents the wait time. For example, `/W:5` sets a 5-second wait time between retries.

6. Logging (`/LOG:<File>`): The `/LOG` option enables logging of the `ROBOCOPY` operation to a specified log file. `<File>` represents the path of the log file.

7. Mirror Copy (`/MIR`): The `/MIR` option mirrors the source directory to the destination directory, meaning it will remove files from the destination that no longer exist in the source.

8. Excluding Files or Directories (`/XF` and `/XD`): The `/XF` option allows excluding specific files, and the `/XD` option allows excluding specific directories from the copying process.

9. Copy in Restartable Mode (`/Z`): The `/Z` option enables copying in restartable mode, which means if the copy is interrupted, it can be resumed from where it left off.

These are just some of the commonly used options of the `ROBOCOPY` command. To see the full list of options and their explanations, you can open the Command Prompt and type `ROBOCOPY /?`.

## Resources

- [How to Use Windows Batch File Commands to Automate Repetitive Tasks](https://www.makeuseof.com/tag/use-windows-batch-file-commands-automate-repetitive-tasks/)
- [Wikibooks: Windows Batch Scripting](https://en.wikibooks.org/wiki/Windows_Batch_Scripting)
