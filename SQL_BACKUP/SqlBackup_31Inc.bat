cd c:\SQL_Backup
mkdir "e:\SQLDATA\tmp\reports"
expressmaint -S (local)\I31 -U sa -P 5492! -D ALL_USER -T DB -R "e:\SQLDATA\tmp\reports" -RU DAYS -RV 40 -B "e:\SQLDATA\tmp" -BU DAYS -BV 40 -BF $(DB)_$(DATE)_$(TIME) -C
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\reports\*.*" "E:\SQLData\SQLData Automatic Backups\Mainetti\Logs"
gzip -q -r "e:\SQLDATA\tmp"
forfiles /P "E:\SQLData\SQLData Automatic Backups\31Inc" /S /M *.* /D -40 /C "cmd /c del @PATH"
forfiles /P "E:\SQLData\SQLData Automatic Backups\31Inc\Logs" /S /M *.* /D -40 /C "cmd /c del @PATH"
forfiles /P \\202.1.1.119\Auto_Backups\31Inc /S /M *.* /D -40 /C "cmd /c del @PATH"
mkdir e:\SQLDATA\tmp2
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\I31\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\DEV\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\SYS\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp2\*.*" "E:\SQLData\SQLData Automatic Backups\31Inc"
xcopy /Y /C /E /I /H e:\SQLDATA\tmp2\*.* \\202.1.1.119\Auto_Backups\31Inc
rd /S /Q e:\SQLDATA\tmp
rd /S /Q e:\SQLDATA\tmp2
exit