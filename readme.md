# Merill's DevBox Config

## macOS

### PowerShell

Edit the PowerShell profile using this command

```powershell
code $PROFILE
```

Then copy the content from [macOS/PowerShell/Microsoft.PowerShell_profile.ps1] into the profile file. Update the path to the ohmyposh theme if needed.

### iTerm2

iTerm Profiles are exported to [macOS/iTerm2/Profiles.json].

If you make any changes remember to commit to git.

Note: One key config is **Command** in the iTerm profile. Using the -noprofile -command params will make the prompt load up faster.

```bash
/usr/local/microsoft/powershell/7/pwsh -noexit -noprofile -command '. $PROFILE’
```
