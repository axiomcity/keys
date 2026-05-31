# Update Profile
$lprofil="$env:ProgramFiles\PowerShell\7\profile.ps1"
$rprofile="https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/profile.ps1"
write-host " - Profil actuel de $lprofil"
read-host "Mettre a jour le profile utilisateur ? [ Enter=YES / Ctrl-C=NO ]"
curl $rprofil -o $lprofil; Start-Process $lprofil
read-host "Que faire ensuite ?"
