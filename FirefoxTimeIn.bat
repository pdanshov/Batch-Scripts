START "" "C:\Program Files\Mozilla Firefox\firefox.exe"  about:blank
::PING 127.1.1.1
REM Scheduler Starts @ 8:54 & 12:22
:: Add case for delays, generate random number between
:: 1-3 and multiply by 60 (for amount of seconds to wait)



::Read file contents into a variable:
::for /f "delims=" %%x in (version.txt) do set Build=%%x
::or
::set /p Build=<version.txt
::Both will act the same with only a single line in the file, for more lines the for variant will put the last line into the variable, while set /p will use the first.
::Using the variable – just like any other environment variable – it is one, after all:
::%Build%
::So to check for existence:
::if exist \\fileserver\myapp\releasedocs\%Build%.doc ...
::Although it may well be that no UNC paths are allowed there. Can't test this right now but keep this in mind.
ECHO %RANDOM% > C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
ECHO %RANDOM% >> C:\Users\pdanshov\Documents\Code\InLog.txt
SET /A delay=(%RANDOM% * 180) / 32768 + 1
REM ECHO %delay% > C:\Users\pdanshov\Documents\Code\InTime.txt
::EQU - equal
::NEQ - not equal
::LSS - less than
::LEQ - less than or equal
::GTR - greater than
::GEQ - greater than or equal
::cmd help if
ECHO %delay% >> C:\Users\pdanshov\Documents\Code\InLog.txt
IF %delay% GTR 120 (
  SET /A delay=180
  ECHO %delay% is set to 180. >> C:\Users\pdanshov\Documents\Code\InLog.txt
) ELSE IF %delay% LEQ 60 (
  SET /A delay=60
  ECHO %delay% is set to 60. >> C:\Users\pdanshov\Documents\Code\InLog.txt
) ELSE IF %delay% GTR 60 (
  SET /A delay=120
  ECHO %delay% is set to 120. >> C:\Users\pdanshov\Documents\Code\InLog.txt
) ELSE (
   REM default case...
)
ECHO %delay% >> C:\Users\pdanshov\Documents\Code\InLog.txt

TIMEOUT /T %delay% /nobreak
:: This needs to be here because the scheduler thinks the
:: batch file crashed since it pauses & doesn't return anything
:: it keeps trying to repeat the executions (currently set to
:: 3 tries)
IF EXIST InRan.txt (
    ECHO In Already Ran. >> C:\Users\pdanshov\Documents\Code\InLog.txt
	PAUSE
 ) ELSE ( 
    START "" "C:\Program Files\Mozilla Firefox\firefox.exe"   imacros://run/?m=TimeIn.iim
	ECHO %delay% > C:\Users\pdanshov\Documents\Code\InRan.txt
 )
 