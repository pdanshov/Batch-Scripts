cd c:\SQL_Backup
mkdir "e:\SQLDATA\tmp\reports"
expressmaint -S (local)\blue10live -U sa -P 5492! -D ALL_USER -T DB -R "e:\SQLDATA\tmp\reports" -RU DAYS -RV 40 -B "e:\SQLDATA\tmp" -BU DAYS -BV 40 -BF $(DB)_$(DATE)_$(TIME) -C
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\reports\*.*" "E:\SQLData\SQLData Automatic Backups\Blue10Live\Logs"
gzip -q -r "e:\SQLDATA\tmp"
forfiles /P "E:\SQLData\SQLData Automatic Backups\Blue10Live" /S /M *.* /D -40 /C "cmd /c del @PATH"
forfiles /P "E:\SQLData\SQLData Automatic Backups\blue10live\Logs" /S /M *.* /D -40 /C "cmd /c del @PATH"
forfiles /P \\202.1.1.119\Auto_Backups\blue10live /S /M *.* /D -40 /C "cmd /c del @PATH"
mkdir e:\SQLDATA\tmp2
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\BLU\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\PRE\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp\SYS\*.*" "e:\SQLDATA\tmp2"
xcopy /Y /C /E /I /H "e:\SQLDATA\tmp2\*.*" "E:\SQLData\SQLData Automatic Backups\blue10live"
xcopy /Y /C /E /I /H e:\SQLDATA\tmp2\*.* "\\202.1.1.119\Auto_Backups\Blue Book\blue10live"
rd /S /Q e:\SQLDATA\tmp
rd /S /Q e:\SQLDATA\tmp2
exit