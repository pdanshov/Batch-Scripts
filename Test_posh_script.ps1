


<#
	Next, go to the Actions tab and click New to set the action for this task to run. Set the Action to Start a program.

	In the Program/script box enter "PowerShell."

	In the Add arguments (optional) box enter the value ".\[Your PowerShell Script Name]." For example, if your PowerShell Script is named "Migration1.ps1" then you would enter ".\Migration1.ps1" as the value.

	Then, in the Start in (optional) box, add the location of the folder that contains your PowerShell script. In this example, the script is in a folder called "Script" that is off the root C: drive.
	
	##################################################################################
	
	http://blogs.technet.com/b/heyscriptingguy/archive/2012/09/18/create-a-powershell-scheduled-job.aspx
	
	http://blogs.technet.com/b/heyscriptingguy/archive/2013/11/23/using-scheduled-tasks-and-scheduled-jobs-in-powershell.aspx
	
	
	http://msdn.microsoft.com/en-us/library/jj150476%28v=vs.85%29.aspx
	
	
	
	###################################################################################
	
	
	The Scheduled Task is setup like this:
	# Program/Script: %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe
	# Arguments: -ExecutionPolicy Bypass -file C:\Scripts\LaunchPublishedApp.ps1

#>

<#
#In PowerShell V1 there's only # to make the text after it a comment.
# This is a comment in Powershell
In PowerShell V2 <# #> can be used for block comments and more specifically for help comments.
REQUIRES -Version 2.0
#>

<#  
.SYNOPSIS  
    A brief description of the function or script. This keyword can be used
    only once in each topic.        
.DESCRIPTION  
    A detailed description of the function or script. This keyword can be
    used only once in each topic.
.NOTES  
    File Name      : xxxx.ps1  
    Author         : J.P. Blanc (jean-paul_blanc@silogix-fr.com)
    Prerequisite   : PowerShell V2 over Vista and upper.
    Copyright 2011 - Jean Paul Blanc/Silogix    
.LINK  
    Script posted over:  
    http://silogix.fr  
.EXAMPLE  
    Example 1     
.EXAMPLE    
    Example 2
#>

<#
Function blabla
{}
For more explanation about .SYNOPSIS and .* see about_Comment_Based_Help.
Remark : These function comments are used by Get-Help CmdLet and can be put before the keyword function, or inside the {} before or after the code itself.

http://www.neolisk.com/techblog/powershell-specialcharactersandtokens


http://technet.microsoft.com/en-us/library/dd347667.aspx
Start-Process -FilePath ".\Scripts\Prerequisites\FilterPack\FilterPack64bit.exe" -ArgumentList /passive, /norestart -Wait
#>

$exe = "H:\backup\scripts\vshadow.exe"
$arguments = "-p -script=`"H:\backup\scripts\vss.cmd`" E: M: P:"
& $exe $arguments








