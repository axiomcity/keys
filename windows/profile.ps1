# Powerhsell 7 profile at -> C:\Program Files\PowerShell\7\profile.ps1

# Other
$host.ui.RawUI.WindowTitle="PowerShell " + $PSVersionTable.PSVersion.ToString()
Set-Location "C:\Users\david\"
Clear-Host

# Python
New-Alias lpip C:\Users\david\lvenv\Scripts\pip.exe
New-Alias lpython C:\Users\david\lvenv\Scripts\python.exe

# SYSTEM
New-Alias reboot Restart-Computerss

