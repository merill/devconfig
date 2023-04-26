# If any changes are made here, update https://github.com/merill/devconfig/blob/main/PowerShell/
oh-my-posh --init --shell pwsh --config "F:\code\devconfig\ohmyposh\blue-owl-mf.json" | Invoke-Expression | Out-Null
if(-not(Get-Module -name Terminal-Icons)) { Import-Module -Name PSReadLine | Out-Null }
if(-not(Get-Module -name PSReadLine)) { Import-Module -Name PSReadLine | Out-Null }
Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView | Out-Null