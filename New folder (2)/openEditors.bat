@echo off
start wt -w 0 nt -p "PowerShell" -d E:\ -e "PowerShell" -NoExit -Command timeout /t 5 /nobreak >nul;
    code E:\Git;
    code-insiders E:\Git;
    cursor E:\Git;
    fleet E:\Git;