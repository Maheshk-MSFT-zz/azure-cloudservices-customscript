$username = 'newuser'
$password = 'Password@123'

$currpath=(Convert-Path .)
Unregister-ScheduledTask -TaskName "schedtask" -Confirm:$false -ErrorAction SilentlyContinue
$action = New-ScheduledTaskAction -Execute "$currpath\ConsoleApp1.exe" -WorkingDirectory $currpath -Argument "some.txt"
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddSeconds(2)
Register-ScheduledTask -Action $action -Trigger $trigger -User $username -Password $password -TaskName "schedtask"  

# wait for task to finish
Start-Sleep -s 5