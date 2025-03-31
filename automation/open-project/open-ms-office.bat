@echo off
setlocal

echo Opening Microsoft Office Applications...

rem Check and open Word
if exist "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE" (
    start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE"
) else (
    echo Microsoft Word not found.
)

rem Check and open Excel
if exist "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" (
    start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE"
) else (
    echo Microsoft Excel not found.
)

rem Check and open PowerPoint
if exist "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE"
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE" (
    start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE"
) else (
    echo Microsoft PowerPoint not found.
)

rem Check and open Outlook
if exist "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" (
    start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
) else (
    echo Microsoft Outlook not found.
)

rem Check and open Access
if exist "C:\Program Files\Microsoft Office\root\Office16\MSACCESS.EXE" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\MSACCESS.EXE"
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\MSACCESS.EXE" (
    start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\MSACCESS.EXE"
) else (
    echo Microsoft Access not found.
)

rem Check and open Publisher
if exist "C:\Program Files\Microsoft Office\root\Office16\MSPUB.EXE" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\MSPUB.EXE"
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\MSPUB.EXE" (
    start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\MSPUB.EXE"
) else (
    echo Microsoft Publisher not found.
)


echo Opening New Outlook...
start ms-outlook:

echo Microsoft Office application launches initiated.
endlocal