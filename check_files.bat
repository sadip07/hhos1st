@echo off
echo DDoS Web Monitor File Check Utility
echo ==================================
echo.

echo Checking current directory: %cd%
echo.

echo --- Directory listing ---
dir /b
echo.

echo --- Tools directory ---
if exist tools (
    echo Tools directory found
    dir /b tools
) else (
    echo ERROR: Tools directory not found!
)
echo.

echo --- Dist directory ---
if exist tools\dist (
    echo Dist directory found
    dir /b tools\dist
) else (
    echo ERROR: tools\dist directory not found!
)
echo.

echo --- Checking executable ---
if exist tools\dist\web_monitor.exe (
    echo FOUND: web_monitor.exe exists
    echo Size: 
    for %%I in (tools\dist\web_monitor.exe) do echo %%~zI bytes
) else (
    echo ERROR: web_monitor.exe not found!
)
echo.

echo --- Checking templates ---
if exist tools\templates (
    echo Templates directory found
    dir /b tools\templates
) else (
    echo Templates directory not found
)
echo.

echo Diagnosis complete. Press any key to exit...
pause > nul 