
@echo off
setlocal

set "terminalPath=C:\Users\%USERNAME%\AppData\Local\Microsoft\WindowsApps\wt.exe"
set "backendPath=E:\Git\study-circle-backend"
set "frontendPath=E:\Git\study-circle-frontend"

set "vscodePath=C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
set "vscodeInsidersPath=C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code Insiders\Code - Insiders.exe"
set "fleetPath=C:\Users\%USERNAME%\AppData\Local\Programs\JetBrains Fleet\fleet64.exe"
set "cursorPath=C:\Users\%USERNAME%\AppData\Local\Programs\cursor\Cursor.exe"
set "vsPath=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"


if exist "%vscodePath%" (
    start "" "%vscodePath%" "%backendPath%"
) else (
    echo Visual Studio Code not found.
)

if exist "%vscodeInsidersPath%" (
    start "" "%vscodeInsidersPath%" "%frontendPath%"
) else (
    echo Visual Studio Code Insiders not found.
)


start wt -w 0 nt -p "PowerShell" -d "%backendPath%"  -e "powershell" -NoExit -Command npm run dev
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d "%frontendPath%" -e "powershell" -NoExit -Command npm start
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d E:\ -e "powershell" -NoExit -Command echo "Happy Hacking!"

timeout /t 5 /nobreak >nul

if exist "%terminalPath%" (
    start "" "%terminalPath%" ^
        new-tab -p "Git Bash" -d "%backendPath%" ; ^
        new-tab -p "Git Bash" -d "%frontendPath%"
) else (
    echo Windows Terminal not found.
)

timeout /t 5 /nobreak >nul



echo All launch commands executed.
endlocal