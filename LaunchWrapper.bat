

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::								Peter Danshov
::					pdanshv@gmail.com		12.02.14
::		This batch file launches the Altova MapForce wrapper for 
::		processing EDI files, and leaves logs in the same folder
::		it is run from.
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


@ECHO off
:: Logs are in the same folder as this batch file
echo "" > wrapper_bat.log
echo %DATE% - %TIME% >> wrapper_bat.log
echo "" >> wrapper_bat.log

call :main>>wrapper_bat.log 2>&1
PAUSE
EXIT /b

:main
echo Start time is: %date% %TIME%
ECHO.

cd MapWrapper
c:\windows\system32\cmd.exe /c CSIWrapper2008.exe ..\Raw ..\Processed ..\FA >> wrapper_main.log

::sleep 1200000 >> Email_Two.log
timeout /T 7 >> Email_T.log
::pause

ECHO.
EXIT /b

