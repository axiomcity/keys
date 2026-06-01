# AdminTools.ps1

# Init admintools
$prod=$false
Clear-Host
if ( $prod -eq $true ) {
cd $env:USERPROFILE
# Winget - https://learn.microsoft.com/en-us/windows/package-manager/winget/
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
# Git - winget install --id Git.Git -e --source winget
winget install --id Git.Git -e --source winget
# Github repo keys
git clone https://github.com/axiomcity/keys
# Powershell 7 - https://learn.microsoft.com/fr-fr/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.6
iwr https://github.com/PowerShell/PowerShell/releases/download/v7.6.2/PowerShell-7.6.2-win-x64.msi -OutFile .\keys\PS7.msi
msiexec /i ./keys/PS7.msi /quiet /norestar
write-host -ForegroundColor Green " - Profil actuel de $lprofil"
}

# ProfileUpdate
function ft_ProfileUpdate() {
write-host -ForegroundColor Green " - AdminTOols V0.1 06/2026"
$input = read-host -Prompt "Mettre a jour le profile utilisateur ? [ Y / N ]"
if ( $input -eq "Y" ) { .\ProfileUpdate.ps1 }
elseif ( $input -eq "N" ) { echo "NO" }
else { Write-Host -ForegroundColor Red "Choisir [ Y / N ]"; ft_ProfilUpdate }
}
ft_ProfileUpdate


