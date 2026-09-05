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

## Zsh plugins (macOS)

Oh My Posh only draws the prompt. Colouring the command line as you type and inline history suggestions come from two separate zsh plugins, which do the same job PSReadLine does in PowerShell.

* `zsh-syntax-highlighting` colours commands, paths and flags as you type. A valid command turns green, an unknown one red.
* `zsh-autosuggestions` shows a grey history based suggestion inline. Press the right arrow to accept it.

```zsh
brew install zsh-syntax-highlighting zsh-autosuggestions
```

### Add this to the end of .zshrc

These go after the oh-my-posh line. `zsh-syntax-highlighting` must be the last thing sourced in the file because it wraps every line editor widget at the moment it loads.

```zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

## Atuin (shell history)

[Atuin](https://atuin.sh) replaces the built in shell history with a searchable database and can sync it between machines. It takes over Ctrl+R and the up arrow in both zsh and PowerShell. Docs: [https://docs.atuin.sh](https://docs.atuin.sh/latest/guide/installation/)

### Install

macOS (installs to `~/.atuin/bin`):

```zsh
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
```

Windows:

```powershell
winget install -e Atuinsh.Atuin
```

To sync history between machines run `atuin login` (or `atuin register` for a new account) and then `atuin sync`.

### Add this to .zshrc

Put these near the top of the file, before the oh-my-posh line. The installer normally adds the first line for you.

```zsh
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"
```

### Add this to $PROFILE

Atuin needs PSReadLine loaded and `atuin` on the PATH before these lines run, so keep them at the end of the profile. The macOS profile in [PowerShell/](PowerShell/) adds `~/.atuin/bin` to the PATH for this reason. On Windows winget puts atuin on the PATH already.

```powershell
$env:ATUIN_HOST_NAME = "$(hostname)-pwsh"
atuin init powershell | Out-String | Invoke-Expression
```

The first line tags commands run in pwsh with their own host name. See the next section for why.

Note: The prompt is two lines. Atuin works this out on its own, but if the prompt jumps after closing the search screen set `$env:ATUIN_POWERSHELL_PROMPT_OFFSET = -1` before these lines.

### Keep pwsh and zsh history separate

Atuin does not record which shell ran a command, but it does record a host name and has a "host" filter mode. The `ATUIN_HOST_NAME` line in the pwsh profile makes pwsh commands look like they came from a host called `<hostname>-pwsh`, while zsh keeps the real host name. With host as the default filter, Ctrl+R and the up arrow only show commands from the shell you are in. Press Ctrl+R inside the search screen to cycle to global and see everything.

Add this to `~/.config/atuin/config.toml`. Both settings are already in the default file, commented out.

```toml
filter_mode = "host"
filter_mode_shell_up_key_binding = "host"
```

Note: This only applies to commands recorded after the change. Sync is unaffected. The directory and workspace filter modes still show both shells.

Note: atuin in PowerShell not tested on Windows.

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
