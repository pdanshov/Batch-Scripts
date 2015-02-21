
@echo off
cd C:\edicomm\ARCHIVE\IMAIL_OUT
::set "folder=C:\edicomm\ARCHIVE\IMAIL_OUT"
::%folder%="C:\edicomm\ARCHIVE\IMAIL_OUT"
::for /f %%a in ('dir /b /s /ad %folder%^|find /c /v "" ') do set count=%%a
setlocal enableextensions
set count=0
for %%x in (*) do set /a count+=1
echo.
echo %count% files in Imail out folder, running Imail.
echo.
endlocal
timeout 3
::echo %count% folder(s^)>> !output!
::echo %count%
cd c:\I-Mail
::Imail.exe
::for /f %%a in ('dir /b /s /ad %folder%^|find /c /v "" ') do set count=%%a
cd C:\edicomm\ARCHIVE\IMAIL_OUT
setlocal enableextensions
set count=0
for %%x in (*) do set /a count+=1
echo.
echo %count% files in Imail out folder after Imail, deleting remaining.
echo.
endlocal
::wait 2
timeout 3
::ping /n 2 127.1.1.1
del /F/S/Q C:\edicomm\ARCHIVE\IMAIL_OUT\*.*
setlocal enableextensions
set count=0
for %%x in (*) do set /a count+=1
echo.
echo %count% files in Imail out folder.
echo.
endlocal
pause
::PAUSE