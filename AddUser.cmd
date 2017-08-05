net user newuser Password@123 /add
net LOCALGROUP "Administrators" "newuser" /add

PowerShell -ExecutionPolicy Unrestricted .\PowerShellRunAs.ps1 >> logPowerShellRunAs.txt 2>&1
EXIT /B 0
