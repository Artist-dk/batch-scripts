@echo off
setlocal

set "terminalPath=C:\Users\%USERNAME%\AppData\Local\Microsoft\WindowsApps\wt.exe"
set "backendPath=E:\Git\study-circle-backend"
set "frontendPath=E:\Git\study-circle-frontend"

if exist "%terminalPath%" (
    start "" "%terminalPath%" ^
        new-tab -p "Git Bash" -d "%backendPath%" ; 
        new-tab -p "Git Bash" -d "%frontendPath%"
) else (
    echo Windows Terminal not found.
)

endlocal


