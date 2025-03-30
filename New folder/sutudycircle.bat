
@echo off
setlocal

set "projectPath=E:\Git\study-circle-frontend"

set "vscodePath=C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
set "vscodeInsidersPath=C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code Insiders\Code - Insiders.exe"
set "fleetPath=C:\Users\%USERNAME%\AppData\Local\Programs\JetBrains Fleet\fleet64.exe"
set "cursorPath=C:\Users\%USERNAME%\AppData\Local\Programs\cursor\Cursor.exe"
set "vsPath=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"

if exist "%vscodePath%" (
    start "" "%vscodePath%" "%projectPath%"
) else (
    echo Visual Studio Code not found.
)

if exist "%vscodeInsidersPath%" (
    start "" "%vscodeInsidersPath%" "%projectPath%"
) else (
    echo Visual Studio Code Insiders not found.
)

if exist "%fleetPath%" (
    start "" "%fleetPath%" "%projectPath%"
) else (
    echo JetBrains Fleet not found.
)

if exist "%cursorPath%" (
    start "" "%cursorPath%" "%projectPath%"
) else (
    echo Cursor code editor not found.
)

if exist "%vsPath%" (
    start "" "%vsPath%" "%projectPath%.sln"
) else (
    echo Visual Studio 2022 not found.
)
start fleet E:\Git

start wt -w 0 nt -p "PowerShell" -d E:\Git\study-circle-backend -e "powershell" -NoExit -Command npm start
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d E:\Git\study-circle-frontend -e "powershell" -NoExit -Command npm start
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d E:\Git\study-circle-backend -e "powershell" -NoExit -Command npm start
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d E:\ -e "powershell" -NoExit -Command echo "Happy Hacking!"


echo All launch commands executed.
endlocal