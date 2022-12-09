# dotfiles
My personal dotfiles

## My Setup
- Distro : openSUSE
- WM : ?
- Terminal : Kitty
- Shell : zsh
- Editor : neovim
- File Manager : Ranger

## Setup

<details>
<br>
<summary><b>1. Install Required Dependencies</b></summary>
<br>

- rcm
- zsh
- kitty
- nvim
- ranger
- exa 
- mpd
- ncmpcpp
<br>

clone this repo
```sh
git clone --depth 1 https://github.com/wizarash/dotfiles
```
use rcm to manage your dotfiles
```sh
mv dotfiles ~/.dotfiles
rcup
```

</details>

<b>2. Enable Services</b>

```sh
systemctl --user enable mpd.service
systemctl --user start mpd.service
```
