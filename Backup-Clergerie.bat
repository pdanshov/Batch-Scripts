@ECHO off
copy "C:\Program Files\CSI\ASN Processing\asnmaster.mdb" "C:\Program Files\CSI\ASN Processing\ASNBackup\asnmaster.mdb"
echo "" > C:\MinGW\msys\1.0\PO_Check_Bash.log
echo "" > C:\MinGW\msys\1.0\Report_BAT-SH.log
C:\MinGW\msys\1.0\bin\sh -l C:\MinGW\msys\1.0\home\Administrator\Scripts\Report.sh >> C:\MinGW\msys\1.0\Report_BAT-SH.log
echo ASNMaster Database has been Archived.