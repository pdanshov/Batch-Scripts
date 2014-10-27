
rem All of the methodes can set up the basic settings visa netsh eg.
rem netsh interface ip set address "Local Area Connection" static 192.168.1.5 255.255.255.0 192.168.1.1 1
rem But non show how to set up the alternate tab. Even when people say export it via
rem netsh -c interface dump > c:\work-net.txt
rem then to import with
rem netsh -f c:\work-net.txt
rem It does not save the alternate network config, that is It will turn it off and on if you didnt change it but if you do then it will only show the last setting that was saved it doesnt update teh fields with the work-net.txt file.
rem Anyway mabe there is a registry setting somewhere.

::@echo off
setlocal
REM *** Host to test (Google)
set PingHost=74.125.226.166
REM *** Number of pings to send with each test:
set PingCount=10
REM *** Size of the ping packets in byte:
set PingSize=8
REM *** Time in seconds to wait between checks: 5 minutes = 300s
set Pause=300
:PingLoop
ping -4 -l %PingSize% -n %PingCount% %PingHost% | find "TTL" >NUL
if not errorlevel 1 (
	ping.exe localhost -n %Pause% >NUL
	::goto PingLoop
)
color 4F
echo Connection lost, trying to re-establish ...
REM ...
set "ip="
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "Default"') do if not defined ip set ip=%%b
::echo %ip
::echo %ip%
::echo "%ip"
::echo "%ip%"
::echo "%ip%" equ " 202.1.1.2"
if "%ip%" EQU " 202.1.1.2" (
	REM set gateway here
	echo "in first logic block"
	netsh interface ip set address "Local Area Connection" static 202.1.1.223 255.255.255.0 202.1.1.4 1
) else (
	REM set other gateway here
	echo "in second logic block"
	netsh interface ip set address "Local Area Connection" static 202.1.1.223 255.255.255.0 202.1.1.2 1
)
REM ...
color
echo Continuing check ...
::pause
::goto PingLoop

