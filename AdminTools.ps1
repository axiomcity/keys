# AdminTools.ps1

# Init admintools
cd $env:USERPROFILE
# Winget - https://learn.microsoft.com/en-us/windows/package-manager/winget/
Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
# Git - winget install --id Git.Git -e --source winget 
winget install --id Git.Git -e --source winget
# Github repo keys
git clone https://github.com/axiomcity/keys
cd "$env:USERPROFILE\keys"
# Powershell 7 - https://learn.microsoft.com/fr-fr/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.6
iwr https://github.com/PowerShell/PowerShell/releases/download/v7.6.2/PowerShell-7.6.2-win-x64.msi -OutFile .\admintools\PS7.msi
msiexec /i ./admintools/PS7.msi /quiet /norestar
.\admintools\pwsh\AdminTools.ps1

