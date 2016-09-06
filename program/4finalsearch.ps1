echo "This program searches the registry for password references"
echo "Developed 09032016"

#$ErrorActionPreference = "SilentlyContinue"
Write-Host $_
Write-Host $_

Write-Host "Scanning registry for password references..." -BackgroundColor Yellow -ForegroundColor Black
Write-Host $_
#Get-ChildItem C:\ -recurse | Where-Object {$_.PSIsContainer -eq $true -and $_.Name -match "msdia80.dll"}
reg query HKLM /f password /t REG_SZ /s | Format-Table -AutoSize * 
Write-Host "End of scan." -ForegroundColor Yellow


Write-Host "All scans complete." -BackgroundColor Cyan -ForegroundColor Black
#pause