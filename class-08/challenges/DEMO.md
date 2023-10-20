# Challenge - Windows Batch Scripting

## Demo Code

To execute this demo code, save it as a `.bat` file in Windows, then call it from Command Prompt.

```batch
@echo off

:: Variables and user input
set /p name=Enter your name:
echo Hello, %name%! Welcome to Batch Scripting.

:: Conditional statement
set /a age=18
if %age% geq 18 (
    echo You are an adult.
) else (
    echo You are a minor.
)

:: For loop
echo Counting from 1 to 5:
for /l %%i in (1,1,5) do (
    echo %%i
)

:: While loop
set count=1
echo Counting from 1 to 5 using a while loop:
:whileloop
if %count% gtr 5 goto :endwhileloop
echo %count%
set /a count+=1
goto :whileloop
:endwhileloop

:: File operations
echo Creating a text file named "output.txt"...
echo This is some text that will be written to the file. > output.txt
echo File created successfully.

:: End of the script
echo Batch script complete.
pause

```
