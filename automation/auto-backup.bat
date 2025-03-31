@echo off
set SOURCE=C:\Users\%USERNAME%\Documents
set DEST=C:\Backup
set DATE=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%

echo Backing up files...
xcopy /E /I /Y "%SOURCE%" "%DEST%\Backup_%DATE%"
echo Backup completed!
pause
