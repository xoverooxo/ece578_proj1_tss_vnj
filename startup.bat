@echo off

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python first.
    exit /b 1
)

:: Get the directory of the current script
set "SCRIPT_DIR=%~dp0"

:: Set the directory for the virtual environment
set "VENV_DIR=%SCRIPT_DIR%venv"

:: Create the virtual environment
python -m venv "%VENV_DIR%"

:: Activate the virtual environment
call "%VENV_DIR%\Scripts\activate.bat"

:: Provide feedback to the user
echo Virtual environment created and activated at "%VENV_DIR%".
