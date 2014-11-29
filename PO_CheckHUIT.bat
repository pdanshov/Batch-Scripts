@ECHO off
:: Logs are in C:\MinGW\msys\1.0\
echo "" > PO_Check_Batch.Log
echo "" > PO_BAT-SH.Log
echo "" > PO_T.Log
call :main>>PO_Check_Batch.Log 2>&1
::PAUSE
EXIT /b

:main
echo Start time is: %date% %TIME%
::SETLOCAL
::(
ECHO.

::You can use %~dp0 to get the path of the currently running batch file.
::Edited to change directory to the VBS location before running
::If you want the VBS to synchronously run in the same window, then
::@echo off
::pushd %~dp0
::cscript necdaily.vbs
::If you want the VBS to synchronously run in a new window, then
::@echo off
::pushd %~dp0
::start /wait "" cmd /c cscript necdaily.vbs
::If you want the VBS to asynchronously run in the same window, then
::@echo off
::pushd %~dp0
::start /b "" cscript necdaily.vbs
::If you want the VBS to asynchronously run in a new window, then
::@echo off
::pushd %~dp0
::start "" cmd /c cscript necdaily.vbs

start /wait "" cmd /c cscript C:\MinGW\msys\1.0\MDB_Query.vbs
::cscript C:\MinGW\msys\1.0\MDB_Query.vbs
::start /wait "" cmd /c cscript necdaily.vbs

Rem C:\MinGW\msys\1.0\bin\sh ~/test.sh
C:\MinGW\msys\1.0\bin\sh -l C:\MinGW\msys\1.0\home\Administrator\Scripts\PO_Check.sh >> PO_BAT-SH.Log
:: C:\MinGW\msys\1.0\home\Administrator\Scripts\Email_Test.sh

::sleep 1200000 >> Email_Two.Log
timeout /T 7 >> PO_T.Log
::pause
::)>>Email_Two.log
::GOTO :EOF
ECHO.
EXIT /b
