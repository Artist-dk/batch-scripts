@echo off
setlocal

echo Opening Microsoft Office Applications with specific files...

set "wordFilePath=D:\Documents\Resume\Cypress\1y Experience\After Corrections 1\digambar_kumbhar_7262811806.docx"
set "excelFilePath=D:\OneDrive\Documents\Job applications.xlsx"  // corrected extension
set "powerPointFilePath=C:\Users\Artist\Documents\Presentation1.pptx" //local path. You must download the file first.
set "stickyNotesPath=C:\Windows\System32\StikyNote.exe"

rem Check and open Word with file
if exist "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" (
    if exist "%wordFilePath%" (
        start "" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" "%wordFilePath%"
    ) else (
        echo Word file not found: "%wordFilePath%"
    )
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE" (
    if exist "%wordFilePath%" (
        start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE" "%wordFilePath%"
    ) else (
        echo Word file not found: "%wordFilePath%"
    )
) else (
    echo Microsoft Word not found.
)

rem Check and open Excel with file
if exist "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE" (
    if exist "%excelFilePath%" (
        start "" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE" "%excelFilePath%"
    ) else (
        echo Excel file not found: "%excelFilePath%"
    )
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" (
    if exist "%excelFilePath%" (
        start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" "%excelFilePath%"
    ) else (
        echo Excel file not found: "%excelFilePath%"
    )
) else (
    echo Microsoft Excel not found.
)

rem Check and open PowerPoint with file
if exist "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE" (
    if exist "%powerPointFilePath%" (
        start "" "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE" "%powerPointFilePath%"
    ) else (
        echo PowerPoint file not found: "%powerPointFilePath%"
    )
) else if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE" (
    if exist "%powerPointFilePath%" (
        start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE" "%powerPointFilePath%"
    ) else (
        echo PowerPoint file not found: "%powerPointFilePath%"
    )
) else (
    echo Microsoft PowerPoint not found.
)

echo Opening New Outlook...
start ms-outlook:


echo Opening Sticky Notes...
if exist "%stickyNotesPath%" (
    start "" "%stickyNotesPath%"
) else (
    echo Sticky Notes not found.
)

echo Microsoft Office application launches initiated.
endlocal