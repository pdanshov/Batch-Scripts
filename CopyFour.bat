@For /F "tokens=1,2,3,4 delims=/ " %%A in ('Date /t') do @(
Set DayW=%%A
Set Day=%%B
Set Month=%%C
Set Year=%%D
Set All=%%A-%%B-%%C-%%D
)
@For /F "tokens=1,2,3 delims=:,. " %%A in ('echo %time%') do @(
Set Hour=%%A
Set Min=%%B
Set Sec=%%C
Set Allm=%%A.%%B
)
@For /F "tokens=3 delims=: " %%A in ('time /t ') do @(
Set AMPM=%%A
)
md ".\files"
pushd "."
for /f "delims=" %%i in (
  'dir /a-d /b /s "login.java" "register.js" "list.xls" "authenticate.bteq" "2a.jpg" "*.mov"'
) do (
  copy "%%i" ".\files\%%~ni_%All%.mov"
)
PAUSE