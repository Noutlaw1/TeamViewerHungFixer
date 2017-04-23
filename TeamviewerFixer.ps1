$Processes = Get-Process | Where {$_.Name -like "*tv*"}
$Processes += Get-Process | Where {$_.Name -like "*Teamviewer*"}

foreach ($Process in $Processes)
    {
        stop-process $process
    }
Write-host "Stopping Service."
$Services = get-service | Where {$_.name -like "teamviewer"}
foreach ($service in $Services)
    {
    Stop-Service $Service
    Start-SErvice $Service
    }