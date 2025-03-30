@echo off
start wt -w 0 nt -p "PowerShell" -d E:\Git\study-circle-backend -e "powershell" -NoExit -Command npm start
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d E:\Git\study-circle-frontend -e "powershell" -NoExit -Command npm start
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d E:\
timeout /t 5 /nobreak >nul
wt -w 0 nt -p "PowerShell" -d E:\Git\study-circle-backend -e "powershell" -NoExit -Command

