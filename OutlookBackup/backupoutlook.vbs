'===================================================================
'Description: VBS script to backup your pst-files.
'
'Comment: Before executing the vbs-file, set the amount of pst-files
'         that you want to back up, the paths of the pst-files and
'         the backup location (this can also be a network path).
'         See the URL below for more configuration instructions and
'         how to create a Scheduled Task for it.
'
' author : Robert Sparnaaij
' version: 1.0
' website: http://www.howto-outlook.com/downloads/backupscript.htm
'===================================================================

'===================BEGIN MODIFY====================================

'Set the amount of pst-files you want to copy. Start counting at 0!
ReDim pst(1)

'Define the location of each pst-file to backup. Increase the counter!
pst(0) = "C:\Users\Administrator\Documents\Outlook\outlook_new.pst"
'pst(1) = "D:\Documents\Outlook Files\archive.pst"

'Define your backup location
BackupPath = "S:\MyDocuments\joe\outlook\"

'Keep old backups? TRUE/FALSE
KeepHistory = FALSE

'Maximum time in milliseconds for Outlook to close on its own
delay = 30000 'It is not recommended to set this below 8000

'Start Outlook again afterwards? TRUE/FALSE
start = TRUE

'===================STOP MODIFY====================================

'Close Outlook
Call CloseOutlook(delay)

'Outlook is closed, so we can start the backup
Call BackupPST(pst, BackupPath, KeepHistory)

'Open Outlook again when desired.
If start = TRUE Then
  Call OpenOutlook()
End If


Sub CloseOutlook(delay)
  strComputer = "."
  Set objWMIService = GetObject("winmgmts:" _
  & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

  'If Outlook is running, let it quit on its own.
  For Each Process in objWMIService.InstancesOf("Win32_Process")
    If StrComp(Process.Name,"OUTLOOK.EXE",vbTextCompare) = 0 Then
      Set objOutlook = CreateObject("Outlook.Application")
      objOutlook.Quit
      WScript.Sleep delay
      Exit For
    End If
  Next

  'Make sure Outlook is closed and otherwise force it.
  Set colProcessList = objWMIService.ExecQuery _
  ("Select * from Win32_Process Where Name = 'Outlook.exe'")
  For Each objProcess in colProcessList
    objProcess.Terminate()
  Next
  Set objWMIService = Nothing
  Set objOutlook = Nothing
  set colProcessList = Nothing
End Sub


Sub BackupPST(pst, BackupPath, KeepHistory)
  Set fso = CreateObject("Scripting.FileSystemObject")

  If KeepHistory = True Then
    ArchiveFolder = Year(Now) & "-" & Month(Now) & "-" & Day(Now)
    BackupPath = BackupPath & ArchiveFolder & "\"
  End If

  If fso.FolderExists(BackupPath) = False Then
    fso.CreateFolder BackupPath
  End If

  For Each pstPath in pst
    If fso.FileExists(pstPath) Then
      fso.CopyFile pstPath, BackupPath, True
    End If
  Next
  Set fso = Nothing
End Sub


Sub OpenOutlook()
  Set objShell = CreateObject("WScript.Shell")
  objShell.Run "Outlook.exe"
End Sub