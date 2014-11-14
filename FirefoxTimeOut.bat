::Remove the /b (and the /w) from the start command. The /b starts the program in the same window and the /w keeps the window open until the program terminates.
::start "" /w /B /d "%CD%\Project-Aug-New\MyCardApi\trunk\src\build\bin" MyCardApiTest_32d.exe
::exit 0
START "" "C:\Program Files\Mozilla Firefox\firefox.exe"  about:blank
::Can also do this in scheduler:
:: C:\WINNT\system32\CMD.EXE /K "C:\My programs\test.bat"
::PING 127.1.1.1
REM Scheduler Starts @ 6:32 & 6:02
:: Add case for delays, generate random number between
:: 1-6 and multiply by 60 (for amount of seconds to wait)
::
:: This is not random!!
:: for /l %i in (1,1,300) do @(pause&echo %RANDOM%)
ECHO %RANDOM% > C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
SET /A delay=(%RANDOM% * 360) / 32768 + 1
::EQU - equal
::NEQ - not equal
::LSS - less than
::LEQ - less than or equal
::GTR - greater than
::GEQ - greater than or equal
::cmd help if
ECHO %delay% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
IF %delay% GTR 300 (
  SET /A delay=360
  ECHO %delay% is set to 360. >> C:\Users\pdanshov\Documents\Code\OutLog.txt
) ELSE IF %delay% LEQ 60 (
  SET /A delay=60
  ECHO %delay% is set to 60. >> C:\Users\pdanshov\Documents\Code\OutLog.txt
) ELSE IF %delay% GTR 240 (
  SET /A delay=300
  ECHO %delay% is set to 300. >> C:\Users\pdanshov\Documents\Code\OutLog.txt
) ELSE IF %delay% LEQ 120 (
  SET /A delay=120
  ECHO %delay% is set to 120. >> C:\Users\pdanshov\Documents\Code\OutLog.txt
) ELSE IF %delay% GTR 180 (
  SET /A delay=240
  ECHO %delay% is set to 240. >> C:\Users\pdanshov\Documents\Code\OutLog.txt
) ELSE IF %delay% LEQ 180 (
  SET /A delay=180
  ECHO %delay% is set to 180. >> C:\Users\pdanshov\Documents\Code\OutLog.txt
) ELSE (
  REM default case...
)
ECHO %delay% >> C:\Users\pdanshov\Documents\Code\OutLog.txt
TIMEOUT /T %delay% /nobreak
:: This needs to be here because the scheduler thinks the
:: batch file crashed since it pauses & doesn't return anything
:: it keeps trying to repeat the executions (currently set to
:: 3 tries)
IF EXIST OutRan.txt (
    ECHO Out Already Ran.
	PAUSE
 ) ELSE ( 
    START "" "C:\Program Files\Mozilla Firefox\firefox.exe"   imacros://run/?m=TimeOut.iim
	ECHO %delay% > C:\Users\pdanshov\Documents\Code\OutRan.txt
 )
::EXIT /B 0
::GOTO :EOF