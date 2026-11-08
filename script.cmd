
@echo off
setlocal EnableDelayedExpansion

:: -------------------------------------------------------------------
:: 1. Check for Administrator Privileges
:: -------------------------------------------------------------------
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] This script requires administrative privileges.
    echo Please right-click the file and select "Run as administrator".
    echo.
    pause
    exit /b 1
)

:: -------------------------------------------------------------------
:: 2. Display Header
:: -------------------------------------------------------------------
cls
echo ===================================================================
echo                     Custom Setup Script                           
echo ===================================================================
echo.

:: -------------------------------------------------------------------
:: 3. Execute Custom Script Operations
:: -------------------------------------------------------------------
echo [*] Starting task execution...

:: Example Task 1: Check system environment
echo [*] Checking Windows version...
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"

:: Example Task 2: Create a directory or run administrative tasks
echo [*] Setting up workspace directory...
if not exist "C:\MyCustomSetup" (
    mkdir "C:\MyCustomSetup"
    echo [+] Directory created: C:\MyCustomSetup
) else (
    echo [i] Directory already exists.
)

echo.
echo [*] All tasks completed successfully.

:: -------------------------------------------------------------------
:: 4. Clean Up and Exit
:: -------------------------------------------------------------------
echo.
echo ===================================================================
echo Script execution finished. Press any key to close this window.
echo ===================================================================
pause >nul
exit /b 0
