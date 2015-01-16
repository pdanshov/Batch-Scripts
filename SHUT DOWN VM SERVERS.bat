cd "C:\Program Files (x86)\VMware\VMware Workstation"
vmrun stop "C:\Virtual Machines\Adrien VM\Windows XP Professional.vmx" soft
vmrun stop "C:\Virtual Machines\CSI Billing\Windows XP Professional.vmx" stop soft
vmrun stop "C:\Virtual Machines\CIS8 New\Windows XP Professional.vmx" stop soft
vmrun stop "C:\Virtual Machines\CSI SQL 2005\Windows XP Professional.vmx" stop soft
vmrun stop "C:\Virtual Machines\CSI2\Windows XP Professional.vmx" stop soft
vmrun stop "C:\Virtual Machines\CSI12\CSI 12.vmx" stop soft
vmrun stop "C:\Virtual Machines\NEW Daniel\Windows XP Professional.vmx" stop soft
Taskkill /IM vmware.exe /F
