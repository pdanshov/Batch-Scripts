
<#  
.SYNOPSIS  
    This script launches TPPC on Mainetti EDI for translating inbound documents
.DESCRIPTION  
    This script launches TPPC on Mainetti EDI for translating inbound documents,
	helps with circumventing failed Task Scheduler launches.
.NOTES  
    File Name      : TPPC_POSH.ps1  
    Author         : Peter Danshov (pdanshv@gmail.com)
    Prerequisite   : PowerShell V2 over Vista and upper.
    Copyright 2011 - Peter Danshov - Computer Solutions Intl., Inc.
.LINK  
    Script posted over:
    C:\MinGW\msys\1.0\home\Administrator\Scripts
.EXAMPLE  
    Example 1
.EXAMPLE    
    Example 2
#>

$exe = "C:\ASSET\wasset.exe"
$arguments = "unattend receive 0003"
& $exe $arguments
