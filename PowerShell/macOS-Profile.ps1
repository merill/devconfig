# If any changes are made here, update https://github.com/merill/devconfig/blob/main/PowerShell/
if(-not(Get-Module -name Terminal-Icons)) { Import-Module -Name Terminal-Icons | Out-Null }
if(-not(Get-Module -name PSReadLine)) { Import-Module -Name PSReadLine | Out-Null }
Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView | Out-Null
$env:PATH += ":/opt/homebrew/bin:/usr/local/bin:$HOME/.atuin/bin"
oh-my-posh init pwsh --config /Users/merill/GitHub/devconfig/ohmyposh/blue-owl-mf.json | Invoke-Expression

# Atuin shell history (https://atuin.sh). Needs PSReadLine loaded and atuin on the PATH before this line.
atuin init powershell | Out-String | Invoke-Expression
