# Merill's DevBox Config

## Clone this repository

Clone to the folders below. If the path is different you will need to update the path in the PowerShell profile.

* Windows = F:\code\devconfig\
* macOS = /Users/merill/github/devconfig

## Oh My Posh

* Install with homebrew (macOS) and winget (Windows) following instructions at [https://ohmyposh.dev/docs/installation/](https://ohmyposh.dev/docs/)

See steps to edit these files at https://ohmyposh.dev/docs/installation/customize?shell=zsh

### Add this to .zshrc

```zsh
eval "$(oh-my-posh init zsh --config /Users/merill/github/devconfig/ohmyposh/blue-owl-mf.json)"
```

### Add this to $PROFILE

```zsh
oh-my-posh init pwsh --config /Users/merill/github/devconfig/ohmyposh/blue-owl-mf.json | Invoke-Expression
```

Note: oh-my-posh config not tested on Windows.

----------

## Archive - No longer needed can be deleted.

### Install Nerd Font

* Install CaskadiyaCode NF font using oh-my-posh [https://ohmyposh.dev/docs/installation/fonts](https://ohmyposh.dev/docs/installation/fonts)

```zsh
brew tap homebrew/cask-fonts
brew install --cask font-caskaydia-cove-nerd-font
```

### Install Terminal Icons

* Install terminal icons by starting PowerShell and running

```powershell
Install-Module Terminal-Icons
```

```zsh
### PowerShell

Edit the PowerShell profile in iTerm (macOS), Windows Terminal (Windows) and VSCode using this command.

```powershell
code $PROFILE
```

Then copy the content from the OS specific __macOS/Windows__-Profile.ps1 into the profile file. 
Update paths if needed.

### Hyper.is

* Set font size to 16 and font family to 'CaskaydiaCove Nerd Font'
* Set webGLRenderer to false (shows some weird artifacts on the screen if not)

### iTerm2

iTerm Profiles are exported to [macOS/iTerm2/Profiles.json](.).

If you make any changes remember to commit to git.

Note: One key config is __Command__ in the iTerm profile. Using the -noprofile -command params will make the prompt load up faster.

```bash
/usr/local/microsoft/powershell/7/pwsh  -l -nol
```

To find the path for pwsh use this command.

```bash
whereis pwsh
```

#### iTerm configuration

* Apperance > Theme: Minimal
* Windows > Turn off everything except 'Hide scrollbars'
* PowerShell > Text > CaskaydiaCove | 16
