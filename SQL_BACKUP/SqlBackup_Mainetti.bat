cd c:\SQL_Backup
mkdir "e:\SQLDATA\tmp\reports"
expressmaint -S (local)\mainetti -U sa -P 5492! -D ALL_USER -T DB -R "e:\SQLDATA\tmp\reports" -RU DAYS -RV 40 -B "e:\SQLDATA\tmp" -BU DAYS -BV 40 -BF $(DB)_$(DATE)_$(TIME) -C
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\reports\*.*" "E:\SQLData\SQLData Automatic Backups\mainetti\Logs"
gzip -q -r "e:\SQLDATA\tmp"
forfiles /P "E:\SQLData\SQLData Automatic Backups\mainetti" /S /M *.* /D -40 /C "cmd /c del @PATH"
forfiles /P "E:\SQLData\SQLData Automatic Backups\mainetti\Logs" /S /M *.* /D -40 /C "cmd /c del @PATH"
forfiles /P "\\202.1.1.119\Auto_Backups\mainetti" /S /M *.* /D -40 /C "cmd /c del @PATH"
mkdir e:\SQLDATA\tmp2
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\001\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\001_Translation\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\002\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\002_Translation\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\003\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\003_Translation\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\004\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\004_Translation\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\046\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\046_Translation\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\048\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\048_Translation\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\056\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\056_Translation\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\DATACONV\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\EDI\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\SYS\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\TSM\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\YES\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp2\*.*" "E:\SQLData\SQLData Automatic Backups\mainetti"
xcopy /Y /C /E /I /H e:\SQLDATA\tmp2\*.* "\\202.1.1.119\Auto_Backups\mainetti"
rd /S /Q e:\SQLDATA\tmp
rd /S /Q e:\SQLDATA\tmp2
exit