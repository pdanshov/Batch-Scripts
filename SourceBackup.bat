::NET USE S: /delete
::NET USE S: \\BA-3564EC\SDRIVE 54925492! /USER:BA-3564EC\Admin
echo "" > SourceBak.log
echo %date%%time% >> SourceBak.log
net use x: \\202.1.1.107\SDrive
::::::xcopy /e /h /i /s /y /z "C:\Program Files\Open Systems, Inc\ClientSource" "\\202.1.1.107\SDrive\Backup\SourceBackup\Peter\ClientSource" >>SourceBak.log
::::echo a|xcopy c:\Krister\*.* d:\Krister\*.* /d /h /r /s /c
::echo a|xcopy "C:\Program Files\Open Systems, Inc\ClientSource" "\\202.1.1.107\SDrive\Backup\SourceBackup\Peter\ClientSource" /d /h /r /s /c >>SourceBak.log
C:\MinGW\msys\1.0\bin\sh -l C:\MinGW\msys\1.0\home\Administrator\Scripts\SourceBackup.sh >> SourceBak.log
net use x: /delete
ECHO.
EXIT /b
