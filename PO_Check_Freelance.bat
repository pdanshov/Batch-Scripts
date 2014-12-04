@ECHO off
:: Logs are in C:\MinGW\msys\1.0\
echo "" > PO_Check_Batch.Log
echo "" > PO_BAT-SH.log
echo "" > PO_T.log
call :main>>PO_Check_Batch.Log 2>&1
::PAUSE
EXIT /b

:main
echo Start time is: %date% %TIME%
::SETLOCAL
::(
ECHO.


start /wait "" cmd /c cscript C:\MinGW\msys\1.0\FreelanceSQLFAQuery.vbs

Rem C:\MinGW\msys\1.0\bin\sh ~/test.sh
C:\MinGW\msys\1.0\bin\sh -l C:\MinGW\msys\1.0\home\Administrator\Scripts\PO_Check.sh >> PO_BAT-SH.log
:: C:\MinGW\msys\1.0\home\Administrator\Scripts\Email_Test.sh

::sleep 1200000 >> Email_Two.log
timeout /T 7 >> PO_T.log
::pause
::)>>Email_Two.log
::GOTO :EOF
ECHO.
EXIT /b
