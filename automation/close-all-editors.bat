@echo off
setlocal

taskkill /F /IM Code.exe >nul 2>&1
taskkill /F /IM "Code - Insiders.exe" >nul 2>&1
taskkill /F /IM fleet64.exe >nul 2>&1
taskkill /F /IM Cursor.exe >nul 2>&1
taskkill /F /IM devenv.exe >nul 2>&1

echo All known code editors closed.

endlocal