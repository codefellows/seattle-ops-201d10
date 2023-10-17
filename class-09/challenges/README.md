# Ops Challenge - Log Retrieval via Powershell

## Overview

Powershell can be a powerful time saving tool for common tasks like accessing or backing up system logs. In today's Ops Challenge you'll get to write scripted commands that retrieve system log information via Powershell instead of Event Viewer.

## Variables in Powershell

In PowerShell, variables are used to store and manipulate data during script execution. Variables are containers that hold values, and they can store different types of data, such as strings, numbers, arrays, or objects. PowerShell variables are denoted by a dollar sign ($) followed by the variable name.

Here's how you declare and use variables in PowerShell:

**Variable Declaration**

To create a variable, you simply assign a value to it using the assignment operator (=).

```powershell
$variableName = value
```

Variable names in PowerShell are not case-sensitive, but it's a best practice to use camelCase or PascalCase for readability.

**Assigning Values**

You can assign various types of values to a variable, including strings, numbers, arrays, or objects.

```powershell
$greeting = "Hello, World!"  # String
$count = 10                 # Integer
$numbers = 1, 2, 3, 4       # Array
$object = Get-Process       # Object (output of a cmdlet)
```

**Accessing Variable Values**

To access the value stored in a variable, you simply use the variable name with a dollar sign.

```powershell
$greeting  # Outputs "Hello, World!"
$count     # Outputs 10
$numbers   # Outputs the array 1, 2, 3, 4
$object    # Outputs the object (result of Get-Process)
```

**Modifying Variable Values**

You can change the value of a variable by reassigning it.

```powershell
$greeting = "Hi there!"
$count = 20
```

**Variable Scope**

Variables in PowerShell can have different scopes. The scope determines where the variable is accessible.

- Script Scope: The variable is accessible within the script only.
- Global Scope: The variable is accessible across the entire PowerShell session.
- Function Scope: The variable is accessible only within the specific function.

By default, variables have a script scope. To create a variable with a global scope, you can use the `$global:` prefix like this:

```powershell
$global:globalVariable = "This is a global variable."
```

## Pipe Operator in Powershell

In PowerShell, the pipe symbol `|` is known as the "pipe" operator, and it is used to pass the output of one cmdlet or command as input to another cmdlet or command. It allows you to chain multiple commands together, creating a pipeline of data processing.

The basic syntax of the pipe operator is:

```powershell
Command-1 | Command-2
```

Here's how the pipe operator works:

1. The command or cmdlet on the left side of the pipe operator (`Command-1`) produces some output, which could be objects, text, or other data.

2. The pipe operator (`|`) takes the output from `Command-1` and sends it as input to the command or cmdlet on the right side (`Command-2`).

3. `Command-2` then processes the input received from `Command-1` and produces its own output, which can be passed to another command using another pipe or displayed as the final output of the PowerShell statement.

This concept of piping is one of the powerful features of PowerShell that enables you to chain commands together, creating complex and efficient data processing workflows. It allows you to perform a series of operations on data without the need to store intermediate results in variables.

For example:

```powershell
Get-Process | Where-Object { $_.WorkingSet -gt 100MB } | Sort-Object -Property CPU -Descending | Select-Object -First 5
```

In this example, we first retrieve all the processes using `Get-Process`. The output is then passed to the `Where-Object` cmdlet to filter processes with a working set size greater than 100 MB. The resulting processes are then sorted by CPU usage in descending order using `Sort-Object`, and finally, the first five processes are selected using `Select-Object`. The entire operation is performed in a single line using the pipe operator, making the code concise and easy to read.

## `Get-Date`

`Get-Date` is a PowerShell cmdlet used to retrieve the current date and time. It allows you to access the system's current date and time and perform various operations related to date and time manipulation.

Syntax:
```powershell
Get-Date [[-Date] <DateTime>] [-Format <String>]
```

Parameters:
- `-Date`: Specifies a specific date and time to retrieve. If not provided, the current date and time are returned. This parameter accepts DateTime objects or valid date/time string representations.
- `-Format`: Specifies the format of the output date and time. This parameter is optional and allows you to customize the way the date and time are displayed.

**Examples:**

**Get the current date and time**

```powershell
$currentTime = Get-Date
Write-Host "Current date and time: $currentTime"
```
Output: Current date and time: [current date and time will be displayed]

**Get the date and time in a specific format**

```powershell
$customFormat = Get-Date -Format "dddd, MMMM dd, yyyy - HH:mm:ss"
Write-Host "Custom formatted date and time: $customFormat"
```
Output: Custom formatted date and time: [formatted date and time will be displayed]

**Get the date and time for a specific date**

```powershell
$specificDate = Get-Date -Date "2023-08-03 15:30:00"
Write-Host "Specific date and time: $specificDate"
```
Output: Specific date and time: 2023-08-03 15:30:00

`Get-Date` is widely used in PowerShell scripts for tasks such as generating timestamps, creating filenames with date and time information, calculating time differences, or scheduling tasks based on specific dates and times. It is a handy cmdlet when working with date and time information within PowerShell scripts.

## `Get-EventLog`

`Get-EventLog` is a PowerShell cmdlet used to retrieve event log entries from a specified event log on a local or remote computer. Event logs are a record of system, security, and application events generated by Windows and various installed applications. Using this cmdlet, you can view and filter event log data, which is useful for troubleshooting, monitoring, and auditing system activities.

Syntax:
```powershell
Get-EventLog [-LogName] <String> [[-InstanceId] <Int32>] [-After <DateTime>] [-Before <DateTime>] [-UserName <String>] [-EntryType <String[]>] [-Index <Int32[]>] [-Source <String[]>] [-Message <String>] [-Newest <Int32>] [-AsBaseObject] [-Force] [<CommonParameters>]
```

Parameters:
- `-LogName`: Specifies the name of the event log from which to retrieve the event entries (e.g., "System", "Application", "Security").
- `-InstanceId`: Filters the events by a specific event instance ID.
- `-After`: Retrieves events that occurred after the specified date and time.
- `-Before`: Retrieves events that occurred before the specified date and time.
- `-UserName`: Filters events generated by a specific user account.
- `-EntryType`: Filters events based on their type, such as "Information", "Warning", "Error", etc.
- `-Index`: Filters events by their event record index.
- `-Source`: Filters events by the source that generated them (e.g., "Service Control Manager", "Microsoft-Windows-Security-Auditing").
- `-Message`: Filters events based on the message content.
- `-Newest`: Specifies the number of most recent events to retrieve.
- `-AsBaseObject`: Returns events as the original event log entries (System.Diagnostics.EventLogEntry objects).
- `-Force`: Ignores errors and continues processing.

**Examples:**

**Get all events from the "System" event log**

```powershell
$systemEvents = Get-EventLog -LogName System
```

**Get events from the "Application" log with event ID 1001**

```powershell
$eventsWithID1001 = Get-EventLog -LogName Application -InstanceId 1001
```

**Get events from the "Security" log generated by a specific user**

```powershell
$securityEventsByUser = Get-EventLog -LogName Security -UserName "DOMAIN\User"
```

**Get events from the "System" log with the "Error" entry type that occurred in the last 24 hours**

```powershell
$last24HoursErrorEvents = Get-EventLog -LogName System -EntryType Error -After (Get-Date).AddDays(-1)
```

## `Group-Object`

`Group-Object` is a PowerShell cmdlet used to group objects based on one or more properties. It takes a collection of objects and organizes them into separate groups based on the values of the specified properties. This allows you to perform aggregate operations on each group or process the data in a more organized manner.

`Group-Object` is useful when you want to analyze data based on common properties and perform operations on each group independently. It can be used to gain insights from large datasets, facilitate reporting, and perform various data processing tasks in PowerShell scripts.

Syntax:
```powershell
Group-Object [-Property] <Object> [-AsHashTable] [-NoElement] [-Culture <CultureInfo>] [<CommonParameters>]
```

Parameters:
- `-Property`: Specifies the property or properties based on which the objects will be grouped. You can provide a single property name or an array of property names if you want to group by multiple properties.
- `-AsHashTable`: Groups the objects and returns the results as a hashtable, where each key represents a unique value of the grouping property, and the corresponding value is an array of objects belonging to that group.
- `-NoElement`: Only returns the group names without the group members.
- `-Culture`: Specifies the culture to use when sorting the groups.

**Examples**

**Grouping numbers based on their parity (even or odd)**

```powershell
$numbers = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
$groupedNumbers = $numbers | Group-Object { $_ % 2 }
```
Output:
```
Count Name Group
----- ---- -----
    5     1 {1, 3, 5, 7, 9}
    5     0 {2, 4, 6, 8, 10}
```

**Grouping processes by their names**

```powershell
$processes = Get-Process
$groupedProcesses = $processes | Group-Object -Property Name
```
Output:
```
Count Name                      Group
----- ----                      -----
   11 chrome                    {chrome (16832), chrome (17512), ...}
    1 conhost                   {conhost (5884)}
    1 powershell                {powershell (12244)}
    2 svchost                   {svchost (1004), svchost (772)}
    4 System                    {System (4), System (8), ...}
    2 taskhostw                 {taskhostw (15496), taskhostw (15736)}
    1 WINWORD                   {WINWORD (10740)}
```

In the first example, the numbers are grouped based on their parity, creating two groups, one for odd numbers and one for even numbers. In the second example, the processes are grouped based on their names, resulting in different groups for processes with the same name.

## `Sort-Object`

`Sort-Object` is a PowerShell cmdlet used to sort objects in ascending or descending order based on one or more properties. It takes a collection of objects and reorders them based on the values of the specified properties.

`Sort-Object` is useful when you want to organize data for easier analysis, reporting, or presenting it in a specific order. It is commonly used in PowerShell scripts to manipulate and display data in a more structured manner.

Syntax:
```powershell
Sort-Object [[-Property] <Object[]>] [-Descending] [-Culture <CultureInfo>] [-Unique] [<CommonParameters>]
```

Parameters:
- `-Property`: Specifies the property or properties by which the objects will be sorted. You can provide a single property name or an array of property names if you want to sort by multiple properties.
- `-Descending`: Sorts the objects in descending order. By default, objects are sorted in ascending order.
- `-Culture`: Specifies the culture to use when performing the sort operation.
- `-Unique`: Removes duplicate entries from the sorted result.

**Examples:**

**Sorting numbers in ascending order**

```powershell
$numbers = 5, 1, 3, 2, 4
$sortedNumbers = $numbers | Sort-Object
```
Output: 1, 2, 3, 4, 5

**Sorting processes by their working set size (RAM usage) in descending order**

```powershell
$processes = Get-Process
$sortedProcesses = $processes | Sort-Object -Property WorkingSet -Descending
```
Output: Processes will be sorted based on their WorkingSet property in descending order, showing the highest RAM-consuming process first.

**Sorting files in a directory based on their size**

```powershell
$files = Get-ChildItem -Path "C:\MyDirectory" -File
$sortedFiles = $files | Sort-Object -Property Length
```
Output: Files will be sorted based on their Length (size) property in ascending order, showing the smallest file first.

In these examples, the objects (numbers, processes, files) are sorted based on the specified properties, resulting in a new ordered collection. The original data remains unchanged, and the sorted results are returned by the cmdlet.

## `Where-Object`

`Where-Object` is a PowerShell cmdlet used to filter objects from a collection based on specified criteria. It allows you to selectively retrieve objects that match specific conditions or meet certain criteria from a larger set of data.

Syntax:
```powershell
Where-Object [-FilterScript] <ScriptBlock> [<CommonParameters>]
```

Parameters:
- `-FilterScript`: Specifies a script block containing the filtering criteria. The script block should return `$true` for objects that should be included in the result and `$false` for objects that should be excluded.

**Examples:**

**Filtering numbers greater than 5 from an array of numbers**

```powershell
$numbers = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
$filteredNumbers = $numbers | Where-Object { $_ -gt 5 }
```
Output: 6, 7, 8, 9, 10

**Filtering processes that are using more than 100 MB of memory (WorkingSet property)**

```powershell
$processes = Get-Process
$filteredProcesses = $processes | Where-Object { $_.WorkingSet -gt 100MB }
```
Output: Processes using more than 100 MB of memory will be included in the `$filteredProcesses` collection.

**Filtering files with a specific file extension in a directory**

```powershell
$files = Get-ChildItem -Path "C:\MyDirectory" -File
$filteredFiles = $files | Where-Object { $_.Extension -eq ".txt" }
```
Output: Only files with the ".txt" extension will be included in the `$filteredFiles` collection.

In these examples, `Where-Object` filters the objects in the input collection (numbers, processes, files) based on the conditions specified in the script block. The objects that meet the specified criteria are returned in the resulting collection, and those that do not match the criteria are excluded.

## `Select-Object`

`Select-Object` is a PowerShell cmdlet used to select and manipulate specific properties or parts of objects from a collection. It allows you to extract only the properties you need or create custom properties using expressions. This cmdlet is especially useful when you want to reduce the amount of data displayed or processed or when you need to transform objects before further processing.

Syntax:
```powershell
Select-Object [[-Property] <Object[]>] [-ExcludeProperty <Object[]>] [-ExpandProperty <String>] [-InputObject <PSObject>] [-First <Int32>] [-Last <Int32>] [-Skip <Int32>] [-Unique] [<CommonParameters>]
```

Parameters:
- `-Property`: Specifies the properties to be included in the output. You can provide a single property name or an array of property names.
- `-ExcludeProperty`: Specifies properties that should be excluded from the output.
- `-ExpandProperty`: Specifies a property whose values should be expanded, for example, when you have an array property and you want to see each element as a separate object.
- `-InputObject`: Specifies the input collection of objects to be processed by the cmdlet.
- `-First`: Specifies the number of first objects to be included in the output.
- `-Last`: Specifies the number of last objects to be included in the output.
- `-Skip`: Specifies the number of objects to skip before including them in the output.
- `-Unique`: Ensures that only unique objects are included in the output.

**Examples:**

**Selecting specific properties from a collection of processes**

```powershell
$processes = Get-Process
$selectedProcesses = $processes | Select-Object Name, Id, CPU
```
Output: The `$selectedProcesses` collection will contain objects with only the Name, Id, and CPU properties of each process.

**Selecting all properties except a specific one**

```powershell
$files = Get-ChildItem -Path "C:\MyDirectory" -File
$selectedFiles = $files | Select-Object -ExcludeProperty Length
```
Output: The `$selectedFiles` collection will contain objects with all properties of each file except the Length property.

**Expanding a property with an array of values**

```powershell
$services = Get-Service
$expandedServices = $services | Select-Object -ExpandProperty DependentServices
```
Output: The `$expandedServices` collection will contain individual objects for each dependent service associated with the main service.

In these examples, `Select-Object` is used to customize the output by selecting specific properties, excluding properties, or expanding array properties. It helps in reducing the amount of data displayed, transforming data, and preparing data for further processing or reporting.
