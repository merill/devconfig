# Merill's DevBox Config

## Clone this repository

Clone to the folders below. If the path is different you will need to update the path in the PowerShell profile.

* Windows = F:\code\devconfig\
* macOS = /Users/merill/Documents/GitHub/devconfig

## Oh My Posh

* Install with homebrew (macOS) and winget (Windows) following instructions at [https://ohmyposh.dev/docs/installation/](https://ohmyposh.dev/docs/installation/)

### Install Nerd Font

* Install CaskadiyaCove NF font using oh-my-posh [https://ohmyposh.dev/docs/installation/fonts](https://ohmyposh.dev/docs/installation/fonts)

### PowerShell

Edit the PowerShell profile in iTerm (macOS), Windows Terminal (Windows) and VSCode using this command.

```powershell
code $PROFILE
```

Then copy the content from the OS specific __macOS/Windows__-Profile.ps1 into the profile file. 
Update paths if needed.

### iTerm2

iTerm Profiles are exported to [macOS/iTerm2/Profiles.json](.).

If you make any changes remember to commit to git.

Note: One key config is __Command__ in the iTerm profile. Using the -noprofile -command params will make the prompt load up faster.

```bash
/usr/local/microsoft/powershell/7/pwsh -noexit -noprofile -command '. $PROFILE’
```
