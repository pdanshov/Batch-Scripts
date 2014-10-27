@ECHO off
ECHO Checking
PAUSE
IF EXIST "%USERPROFILE%\Application Data\Microsoft\Excel\XLSTART\PERSONAL.XLS" (
	ECHO Exists.
	SET date="%date:~10,4%-%date:~4,2%-%date:~7,2%"
	MD "%USERPROFILE%\Application Data\Microsoft\Excel\XLSTART\BAK %date%"
	COPY "%USERPROFILE%\Application Data\Microsoft\Excel\XLSTART\PERSONAL.XLS" "%USERPROFILE%\Application Data\Microsoft\Excel\XLSTART\BAK %date%\"
	DEL "%USERPROFILE%\Application Data\Microsoft\Excel\XLSTART\PERSONAL.XLS"
	COPY PERSONAL.XLS "%USERPROFILE%\Application Data\Microsoft\Excel\XLSTART\"
	ECHO Done!
	PAUSE
) ELSE (
	ECHO Doesn't exist.
	COPY PERSONAL.XLS "%USERPROFILE%\Application Data\Microsoft\Excel\XLSTART\"
	ECHO Done!
	PAUSE
)