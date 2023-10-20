# Ops Challenge - Windows Batch Scripting

Windows Batch Scripting is a way to automate tasks and run sequences of commands in the Windows operating system using batch files with the `.bat` extension. Remember, if you're using Powershell, your script file will have a `.ps1` extension to let Windows know it needs to execute the file with Powershell. Batch files are simple text files containing a series of commands written in the Windows Command Prompt language, which is similar to MS-DOS commands.

The primary purpose of batch scripting is to automate repetitive tasks, perform system administration tasks, and execute multiple commands in a sequence. It allows users to combine various commands, conditionally execute them, and perform loops and other control structures.

Batch scripts are commonly used for tasks such as file management, backups, network configurations, software installations, and more. They are especially useful when you need to execute the same set of commands regularly or across multiple machines.

**Where do I write Batch Scripts?**

The easiest (and built-in) solution is to use the Notepad app in Windows to write batch scripts, and you can execute these scripts from the Command Prompt in Windows.

- Open Notepad (you can do this by searching for "Notepad" in the Windows Start menu).
- Write your batch script in Notepad.
- Save the file with a `.bat` extension.
- Open Command Prompt (you can search for "cmd" in the Start menu).
- Navigate to the directory where your batch script is saved using the `cd` command.
- Once you are in the correct directory, type the name of your batch file, incuding the file extension and press Enter.
- The batch script will execute, and you will see the output in the Command Prompt window.

**Basic Syntax:**

A typical Windows batch script is a plain text file that contains a series of commands, with each command on a separate line. Here's a simple example:

```batch
@echo off
echo Hello, this is a batch script.
pause
REM This is a comment in a batch file.
:: This is also a comment, and so is everything after the double colon.
```

In this example, we have the following commands:

1. `@echo off`: This turns off the command echoing, so the commands themselves won't be displayed in the console as they execute. It makes the output cleaner, easier to read.
2. `echo Hello, this is a batch script.`: The `echo` command is used to display a message on the console.
3. `pause`: The `pause` command pauses the script execution and waits for the user to press any key before continuing. This is helpful to keep the console window open after the script execution.
4. `REM`: Is short for "remark" or "remark line." It is a non-executable comment in a batch file.
5. `::`: Both `REM` and `::` can be used interchangeably, but `::` is often preferred for comments because it's a bit shorter and can make the code look cleaner.

**Variables and Environment Variables:**

Batch scripts can use variables to store and manipulate data. You can set variables using the `set` command and access their values using `%VariableName%`. Additionally, Windows provides several environment variables with predefined values, like `%USERPROFILE%`, `%TEMP%`, `%COMPUTERNAME%`, etc.

**Control Structures:**

Batch scripts can use various control structures for conditional branching and looping:

1. `if` statement: Used for conditional execution based on the result of a comparison.
2. `for` loop: Used for iterating through a list of items or files.
3. `goto` statement: Used for unconditional branching to a specific label within the script.
4. `:eof`: Is a special built-in label that doesn't represent a location within the script but instead signifies the end of the script. It's a convention used in batch files to indicate the end of the file.
  - When `goto :eof` is encountered, the script will immediately stop executing any further commands and will exit.

**`setlocal` and `endlocal`**

In batch scripting, `setlocal` and `endlocal` are commands used to control the visibility and scope of environment variables and certain settings within a batch script.

The `setlocal` command is used to start localization of the environment variables. When you use `setlocal`, any changes made to variables or settings within the script will be local to the script, meaning they won't affect the variables and settings outside the script. This is particularly useful when you want to isolate changes made within your script, preventing them from impacting the broader environment.

`setlocal enabledelayedexpansion` is a command used to enable delayed variable expansion. This feature allows you to use variables within loops and conditional statements, maintaining the updated values of those variables even inside code blocks (such as loops and if statements).

```batch
@echo off
setlocal enabledelayedexpansion
set count=0

for %%a in (1 2 3 4 5) do (
  set /a count+=1
  echo Inside loop: !count!
)

echo Outside loop: %count%
endlocal
```

By adding `setlocal enabledelayedexpansion`, you enable delayed variable expansion. Now, you can use `!count!` instead of `%count%` to access the updated value of the variable inside loops and conditionals.

The output inside the loop will be:

```batch
Inside loop: 1
Inside loop: 2
Inside loop: 3
Inside loop: 4
Inside loop: 5
```

The `endlocal` command is used to end the localization of environment changes started by `setlocal`. It discards the local environment created by `setlocal` and restores the previous environment, including the values of variables as they were before the `setlocal` command was executed.

**Error Handling:**

Batch scripts can handle errors and take different actions based on the result of a command's execution. This is often achieved using error codes and conditional statements.

```batch
@echo off

set filename=myfile.txt

if not exist %filename% (
  echo Error: The file %filename% was not found.
  pause
  exit /b 1
)

:: Rest of your script goes here
```

You can place this code at the point in your batch file where you want to handle errors. For example, if you're checking for the existence of a file and the file is not found, you can display an error message before exiting the script.

**`errorlevel` and Exit Codes**

In batch scripting, `errorlevel` is a special variable that stores the exit code of the last executed command. After a command is executed, its exit code indicates the success or failure of that operation. By evaluating the `errorlevel` variable, you can determine the outcome of the most recent command and take appropriate actions based on that result.

- **Exit Code 0:** Typically, an exit code of 0 indicates success. It means the command executed without any errors.

- **Exit Code 1:** An exit code of 1 usually indicates a generic error. It suggests that something went wrong during the execution of the command, but the specific issue is not defined.

- **Exit Code 8:** Exit code 8 is specific to the `ROBOCOPY` command. It indicates that some files were copied successfully, but there were errors or discrepancies in the copy operation. `ROBOCOPY` uses exit codes to provide detailed information about the copy process.

Here are some common `ROBOCOPY` exit codes:

- **Exit Code 0:** No errors occurred; all files and directories were copied successfully.

- **Exit Code 1:** One or more files were copied successfully (possibly with minor issues), but some files or directories were skipped or encountered errors.

- **Exit Code 2:** Serious errors occurred during the copy operation. `ROBOCOPY` was not able to copy the majority of your files.

- **Exit Code 3:** The destination directory is not accessible or does not exist.

- **Exit Code 8:** Some files or directories were copied, but there were issues during the operation, such as file permission problems or file conflicts.

When using `ROBOCOPY` in a batch file, you can check the `errorlevel` variable immediately after the `ROBOCOPY` command to handle different exit codes accordingly. For example:

```batch
@echo off
robocopy "source" "destination"
if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)
```

In this example, the batch file checks the `errorlevel` after the `ROBOCOPY` command. If the exit code is 8 or higher, it prints an error message indicating issues during the copy operation. If the exit code is 0, it prints a success message.

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
