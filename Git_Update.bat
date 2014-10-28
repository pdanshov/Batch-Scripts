@ECHO off
:: Logs are in C:\MinGW\msys\1.0\

echo "" > Git_Bash.Log
echo "" > Git_Batch.Log
echo "" > Git_BAT-SH.Log
echo "" > Git_T.Log
echo %DATE% - %TIME% >> Git_Batch.Log
echo "" >> Git_Batch.Log

echo "" > Git_BAT-SH.Log
echo %DATE% - %TIME% >> Git_BAT-SH.Log
echo "" >> Git_BAT-SH.Log

call :main>>Git_Batch.Log 2>&1
PAUSE
EXIT /b

:main
echo Start time is: %date% %TIME%
::SETLOCAL
::(
ECHO.

Rem C:\MinGW\msys\1.0\bin\sh ~/test.sh
"C:\Program Files (x86)\Git\bin\sh" -l C:\MinGW\msys\1.0\home\Administrator\Scripts\Update_Git_Repos.sh >> Git_BAT-SH.Log
:: C:\MinGW\msys\1.0\home\Administrator\Scripts\Email_Test.sh

::sleep 1200000 >> Email_Two.log
timeout /T 7 >> Git_T.Log
::pause
::)>>Email_Two.log
::GOTO :EOF
ECHO.
EXIT /b