@ECHO off
:: Logs are in C:\MinGW\msys\1.0\
echo "" > Test_Code.Log
echo %DATE% - %TIME% >> Test_Code.Log
echo "" >> Test_Code.Log

echo "" > Test_Code_BAT-SH.log
echo %DATE% - %TIME% >> Test_Code_BAT-SH.log
echo "" >> Test_Code_BAT-SH.log

call :main>>Test_Code.Log 2>&1
PAUSE
EXIT /b

:main
echo Start time is: %date% %TIME%
::SETLOCAL
::(
ECHO.

Rem C:\MinGW\msys\1.0\bin\sh ~/test.sh
C:\MinGW\msys\1.0\bin\sh -l C:\MinGW\msys\1.0\home\Administrator\Scripts\TestCode.sh >> Test_Code_BAT-SH.log
:: C:\MinGW\msys\1.0\home\Administrator\Scripts\Email_Test.sh

::sleep 1200000 >> Email_Two.log
::)>>Email_Two.log
::GOTO :EOF
ECHO.
EXIT /b