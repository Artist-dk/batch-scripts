@echo off
setlocal

set "vscodePath=C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
set "vscodeInsidersPath=C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code Insiders\Code - Insiders.exe"
set "fleetPath=C:\Users\%USERNAME%\AppData\Local\Programs\JetBrains Fleet\fleet64.exe"
set "cursorPath=C:\Users\%USERNAME%\AppData\Local\Programs\cursor\Cursor.exe"

start fleet E:\Git

if exist "%vscodePath%" (
    start "" "%vscodePath%"
) else (
    echo Visual Studio Code not found.
)

if exist "%vscodeInsidersPath%" (
    start "" "%vscodeInsidersPath%"
) else (
    echo Visual Studio Code Insiders not found.
)

if exist "%fleetPath%" (
    start "" "%fleetPath%"
) else (
    echo JetBrains Fleet not found.
)

if exist "%cursorPath%" (
    start "" "%cursorPath%"
) else (
    echo Cursor code editor not found.
)


echo All launch commands executed.
endlocal