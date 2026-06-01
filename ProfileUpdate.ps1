# Update Profile
$lprofile="$env:ProgramFiles\PowerShell\7\profile.ps1"
$rprofile="https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/profile.ps1"
curl $rprofile -o $lprofil; Start-Process $lprofile
read-host "Que faire ensuite ?"
