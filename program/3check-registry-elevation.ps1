echo "This program querys the registry to see if .msi files are installed as root by default."
echo "Both keys equalling 1 is a major security vulnerability"
echo "Developed 09032016"

$ErrorActionPreference = "SilentlyContinue"

reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated

Write-Host "Registry scan complete." -BackgroundColor Cyan -ForegroundColor Black
Write-Host $_

#pause