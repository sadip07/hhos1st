@echo off
echo Starting DDoS Web Monitor...
echo.

:: Check if EXE file exists
if not exist "%~dp0tools\dist\web_monitor.exe" (
    echo ERROR: Cannot find web_monitor.exe
    echo Please make sure the file exists at: %~dp0tools\dist\web_monitor.exe
    pause
    exit /b 1
)

:: Try to run the app
echo Running application from: %~dp0tools\dist\web_monitor.exe
start "" "%~dp0tools\dist\web_monitor.exe"

:: Wait a moment for the app to start
timeout /t 3 /nobreak > nul

echo.
echo Web interface started! Open http://localhost:5000 in your browser.
echo If browser doesn't open automatically, please visit http://localhost:5000
echo.
echo Press any key to exit this window (the app will continue running)...
pause > nul 