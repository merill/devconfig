# If any changes are made here, copy it to https://www.notion.so/merill/PowerShell-Config-7caef8b947be4f129c25005b043c5c36
/opt/homebrew/bin/oh-my-posh --init --shell pwsh --config /Users/merill/Library/CloudStorage/OneDrive-Microsoft/ohmyposh/blue-owl-mf.json | Invoke-Expression | Out-Null
Import-Module -Name Terminal-Icons | Out-Null
Import-Module -Name PSReadLine | Out-Null
Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView | Out-Null
$env:PATH += ":/opt/homebrew/bin:/usr/local/bin"
$env:PATH += ":$HOME/msgraph-developer-proxy"