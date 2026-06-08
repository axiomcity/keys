# Update Profile
$lprofile="$env:ProgramFiles\PowerShell\7\profile.ps1"
$rprofile="https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/profile.ps1"
$null = curl $rprofile -o $lprofil; notepad $lprofile
ft_keys