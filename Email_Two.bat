@ECHO off
:: Logs are in C:\MinGW\msys\1.0\
echo "" > Email_Check_Batch.Log
echo %DATE% - %TIME% >> Email_Check_Batch.Log
echo "" >> Email_Check_Batch.Log

echo "" > Email_BAT-SH.log
echo %DATE% - %TIME% >> Email_BAT-SH.log
echo "" >> Email_BAT-SH.log

call :main>>Email_Check_Batch.Log 2>&1
PAUSE
EXIT /b

:main
echo Start time is: %date% %TIME%
::SETLOCAL
::(
ECHO.
net use x: \\202.1.1.107\Auto_Backups > Email_T.log
net use u: \\202.1.1.107\usb1-1.1share1 >> Email_T.log

Rem C:\MinGW\msys\1.0\bin\sh ~/test.sh
C:\MinGW\msys\1.0\bin\sh -l C:\MinGW\msys\1.0\home\Administrator\Scripts\Email_Test.sh >> Email_BAT-SH.log
:: C:\MinGW\msys\1.0\home\Administrator\Scripts\Email_Test.sh

::sleep 1200000 >> Email_Two.log
timeout /T 7 >> Email_T.log
::pause

net use x: /delete >> Email_T.log
net use u: /delete >> Email_T.log
::)>>Email_Two.log
::GOTO :EOF
ECHO.
EXIT /b
