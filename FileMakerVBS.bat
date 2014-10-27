@echo off
cscript //b //nologo TerminateProcess.vbs "wscript.exe"
cscript //b //nologo TerminateProcess.vbs "cscript.exe"
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                              FileMaker is loading...
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.

PING 127.0.0.1 -n 5 -w 1000 > nul
FOR /f "tokens=*" %%G IN ('dir /b DealTrading*.vbs') DO %%G
::cscript //b //nologo "Deal Trading P.vbs"
::PAUSE