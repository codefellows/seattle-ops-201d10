# Ops Challenge - System Information

## Overview

When working on a new system or troubleshooting performance issues, a quick look at system information is a great starting point. Automating the gathering of useful information can dramatically expedite troubleshooting times for busy support technicians. In todays' challenge you will write a bash script that outputs a report about current system CPU and RAM performance.

## `lshw`

`lshw`, short for "Hardware Lister," is a command-line utility available in Linux and other Unix-like operating systems. It is used to display detailed information about the hardware components of a computer system. `lshw` provides a comprehensive view of the system's hardware, including information about the CPU, memory, storage devices, graphics cards, network adapters, and much more.

When you run the `lshw` command without any options, it produces a hierarchical and structured list of the hardware components. It organizes the information into logical blocks representing different hardware categories, making it easier to navigate and understand.

The basic syntax of the `lshw` command is as follows:

```
lshw [options]
```

Here are some common options used with `lshw`:

- `-short`: Display a shorter version of the hardware information, omitting some details.

- `-class`: Display information based on hardware classes (e.g., disk, network, processor).

- `-businfo`: Show bus information for each device.

- `-disable TEST`: Disable certain tests (e.g., cpu, memory, pci) for speed optimization.

- `-json`: Output the information in JSON format.

- `-xml`: Output the information in XML format.

- `-html`: Output the information in HTML format.

- `-sanitize`: Hide sensitive information (e.g., serial numbers) from the output.

`lshw` relies on various system files and libraries to gather information about the hardware. It accesses the `/proc` and `/sys` filesystems, among other sources, to retrieve data about the CPU, memory, and other components.

## `sudo`

Keep in mind that using `lshw` typically requires root (superuser) privileges because it accesses low-level hardware information. To run `lshw` with root privileges, you can use `sudo`:

```
sudo lshw
```

`sudo`, which stands for "SuperUser Do," is a command-line utility in Unix-like operating systems (such as Linux) that allows authorized users to run specific commands with elevated or superuser (root) privileges. The `sudo` command is often used to perform administrative tasks that require higher privileges than those available to regular users.

The basic syntax of `sudo` is as follows:

```
sudo [option] command [arguments...]
```

- `option`: Optional. Used to modify the behavior of `sudo` or specify certain settings.

- `command`: The command you want to execute with elevated privileges.

- `arguments`: Optional. Any additional arguments or options required for the specified command.

**Key Points:**

1. **Elevated Privileges:** When a command is executed with `sudo`, it temporarily elevates the user's privileges to that of the superuser (root). The superuser has unrestricted access to system resources and can perform critical system tasks, such as installing software, modifying system files, and managing services.

2. **Authorization:** To use `sudo`, the user must be explicitly granted access to it in the system's sudoers file. Typically, this is configured by system administrators during the initial setup or via the `visudo` command, which provides a safe way to edit the sudoers file.

3. **Password Authentication:** By default, `sudo` requires the user to enter their own password to confirm their identity before executing a command with elevated privileges. This password is typically the same as the user's login password.

4. **Time Limit:** Once the user enters their password and gains elevated privileges, there is a timeout period (usually a few minutes) during which subsequent `sudo` commands won't prompt for the password again. This prevents the need to repeatedly enter the password for multiple administrative tasks within a short timeframe.

5. **Security:** Using `sudo` is a security best practice because it limits the scope of superuser privileges. Instead of granting unrestricted access to all system tasks, `sudo` allows users to execute specific commands with elevated privileges, reducing the risk of accidental or malicious system changes.

**Examples of `sudo` usage:**

1. Install a package:
```
sudo apt-get install packageName
```

2. Edit a system configuration file:
```
sudo nano /etc/configfile.conf
```

3. Restart a system service:
```
sudo systemctl restart serviceName
```

4. Perform disk management tasks:
```
sudo fdisk /dev/sda
```

It's essential to use `sudo` with caution because it can potentially modify critical system settings. Always double-check the command you are executing and ensure that you understand the consequences of running it with elevated privileges.

## `grep`

The output of `lshw` can be quite extensive and detailed, so it is often helpful to pipe the output through other commands, such as `grep`, to extract specific information or to redirect it to a file for further analysis.

`grep` is a powerful command-line utility used in Unix-like operating systems to search for patterns in text files or streams. It stands for "Global Regular Expression Print."

The basic syntax of `grep` is as follows:

```
grep [options] pattern [file...]
```

- `pattern`: The regular expression pattern to search for in the input. It can be a simple string or a complex regular expression that defines a pattern to match.

- `[file...]`: Optional. One or more file names or paths where `grep` will search for the specified pattern. If this is not provided, `grep` will read from the standard input, which allows you to use it in a pipeline.

Here are some common options used with `grep`:

- `-i`: Ignore case when matching the pattern. It makes the search case-insensitive.

- `-v`: Invert the match. This displays all lines that do not match the specified pattern.

- `-n`: Show line numbers for each matching line.

- `-l`: Only display the names of files containing the matching pattern.

- `-c`: Display the count of lines that match the pattern instead of the matching lines.

- `-r`: Recursively search through directories and their subdirectories.

`grep` searches for the specified pattern in each line of the input (file or standard input) and prints the lines that match the pattern. It can be used to filter out specific lines from large files, search for specific strings, or even perform complex text processing using regular expressions.

Here are some examples of using `grep`:

1. Search for a specific word in a file:
```
grep "apple" fruits.txt
```

2. Case-insensitive search for "apple" in a file:
```
grep -i "apple" fruits.txt
```

3. Search for a pattern that starts with "fru" in a file:
```
grep "^fru" fruits.txt
```

4. Count the number of occurrences of "apple" in a file:
```
grep -c "apple" fruits.txt
```

5. Search for a pattern in all files inside a directory (recursively):
```
grep -r "pattern" /path/to/directory/
```

Note that `grep` uses regular expressions by default, which allows for more complex and flexible pattern matching. If you need a simple search for an exact string, you can use the `-F` option to perform a fixed-string search. For example:

```
grep -F "exact_string" file.txt
```

## Resources

- [Linux lshw Command Tutorial for Beginners](https://www.howtoforge.com/linux-lshw-command/){:target="_blank"}
- [How to use the Linux Grep Commmand](https://careerkarma.com/blog/linux-grep-command/){:target="_blank"}
- Tutorials
  - [Bash](demo/bash.md)
  - [PowerShell](demo/powershell.md)
  - [Z shell](demo/zsh.md)
