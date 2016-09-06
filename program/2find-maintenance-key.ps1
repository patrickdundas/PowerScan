echo "This program searches computers for setup keys left over from unattended workstation setups"
echo "These keys can then be used to find admin passwords"
echo "Developed 09032016"

$ErrorActionPreference = "SilentlyContinue"
Write-Host $_
Write-Host $_

Write-Host "Scanning for setup key [sysprep.inf] (1/3)..." -BackgroundColor Yellow -ForegroundColor Black
Write-Host $_
#Get-ChildItem C:\ -recurse | Where-Object {$_.PSIsContainer -eq $true -and $_.Name -match "msdia80.dll"}
Get-ChildItem -Recurse -Force C:\ -ErrorAction SilentlyContinue | Where-Object { ($_.PSIsContainer -eq $false) -and  ( $_.Name -like "*sysprep.inf*") } | Select-Object Name,Directory| Format-Table -AutoSize * 
Write-Host "End of scan." -ForegroundColor Yellow

Write-Host $_
Write-Host $_

Write-Host "Scanning for setup key [sysprep.xml] (2/3)..." -BackgroundColor Yellow -ForegroundColor Black
#Get-ChildItem C:\ -recurse | Where-Object {$_.PSIsContainer -eq $true -and $_.Name -match "sysprep.xml"}
Get-ChildItem -Recurse -Force C:\ -ErrorAction SilentlyContinue | Where-Object { ($_.PSIsContainer -eq $false) -and  ( $_.Name -like "*sysprep.xml*") } | Select-Object Name,Directory| Format-Table -AutoSize * 
Write-Host "End of scan." -ForegroundColor Yellow

Write-Host $_
Write-Host $_

Write-Host "Scanning for setup key [Unattended.xml] (3/3)..." -BackgroundColor Yellow -ForegroundColor Black
#Get-ChildItem C:\ -recurse | Where-Object {$_.PSIsContainer -eq $true -and $_.Name -match "Unattended.xml"}v
Get-ChildItem -Recurse -Force C:\ -ErrorAction SilentlyContinue | Where-Object { ($_.PSIsContainer -eq $false) -and  ( $_.Name -like "*Unattended.xml*") } | Select-Object Name,Directory| Format-Table -AutoSize * 
Write-Host "End of scan." -ForegroundColor Yellow

Write-Host $_
Write-Host $_

Write-Host "All scans complete." -BackgroundColor Yellow -ForegroundColor Black
Write-Host $_
Write-Host "Check these directories for further exploration" -BackgroundColor Cyan -ForegroundColor Black
Write-Host "c:\sysprep.inf" -BackgroundColor Cyan -ForegroundColor Black
Write-Host "c:\sysprep\sysprep.xml" -BackgroundColor Cyan -ForegroundColor Black
Write-Host "%WINDIR%\Panther\Unattend\Unattended.xml" -BackgroundColor Cyan -ForegroundColor Black
Write-Host "%WINDIR%\Panther\Unattended.xml" -BackgroundColor Cyan -ForegroundColor Black


#pause