# If any changes are made here, update https://github.com/merill/devconfig/blob/main/PowerShell/macOS/Microsoft.PowerShell_profile.ps1
/opt/homebrew/bin/oh-my-posh --init --shell pwsh --config /Users/merill/Documents/GitHub/devconfig/ohmyposh/blue-owl-mf.json | Invoke-Expression | Out-Null
Import-Module -Name Terminal-Icons | Out-Null
Import-Module -Name PSReadLine | Out-Null
Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView | Out-Null
$env:PATH += ":/opt/homebrew/bin:/usr/local/bin"
$env:PATH += ":$HOME/msgraph-developer-proxy" #Delete this line if you don't use the proxy