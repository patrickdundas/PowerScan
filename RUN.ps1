#. .\1find-users.ps1

Write-Host "Logging users" -ForegroundColor Yellow
powershell .\program/1find-users.ps1 > logs/1find-users.log

Write-Host "Logging key search" -ForegroundColor Yellow
powershell .\program/2find-maintenance-key.ps1 > logs/2find-maintenance-key.log

Write-Host "Logging registry vuln. scan" -ForegroundColor Yellow
powershell .\program/3check-registry-elevation.ps1 > logs/3check-registry-elevation.log

Write-Host "Logging final deep search" -ForegroundColor Yellow
powershell .\program/4finalsearch.ps1 > logs/4finalsearch.log

Write-Host "Logging system info" -ForegroundColor Yellow
powershell .\program/5systeminfo.ps1 > logs/5systeminfo.log

$([char]7) 

$wshell = New-Object -ComObject Wscript.Shell

$wshell.Popup("Process complete.",0,"Finished",0x1)

#pause
