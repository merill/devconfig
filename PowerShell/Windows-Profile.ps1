# If any changes are made here, update https://github.com/merill/devconfig/blob/main/PowerShell/
oh-my-posh --init --shell pwsh --config "F:\code\devconfig\ohmyposh\blue-owl-mf.json" | Invoke-Expression | Out-Null
if(-not(Get-Module -name Terminal-Icons)) { Import-Module -Name Terminal-Icons | Out-Null }
if(-not(Get-Module -name PSReadLine)) { Import-Module -Name PSReadLine | Out-Null }
Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView | Out-Null

# Atuin shell history (https://atuin.sh). Needs PSReadLine loaded and atuin on the PATH before this line.
# Tag pwsh commands with their own host name so the Atuin host filter separates pwsh and zsh history
$env:ATUIN_HOST_NAME = "$(hostname)-pwsh"
atuin init powershell | Out-String | Invoke-Expression
