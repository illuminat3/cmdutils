@echo off
echo Cleaning Temporary Files...

:: Delete files in the Windows Temp folder
del /q /s /f "%temp%\*"
rd /s /q "%temp%"

:: Delete files in the system Temp folder
del /q /s /f "%windir%\Temp\*"
rd /s /q "%windir%\Temp\"

echo Emptying Recycle Bin...
:: Empty the Recycle Bin for all users
nircmd.exe emptybin

echo Cleanup Completed.
pause
