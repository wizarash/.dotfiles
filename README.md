<div align="center">
    <h1>✨ Wiz dotfiles ✨</h1>
    <h3></h3>
</div>

<div align="center">

![](https://img.shields.io/github/last-commit/wizarash/dotfiles?color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&style=for-the-badge)
![](https://img.shields.io/github/stars/wizarash/dotfiles?color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&style=for-the-badge)
[![](https://img.shields.io/github/repo-size/wizarash/dotfiles?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41)](https://github.com/wizarash/dotfiles)

</div>

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
<summary><b>1. Install Required Dependencies and Enable Services</b></summary>

- install rcm, zsh, kitty, exa, nvim, ranger, mpd and ncmpcpp
```sh
sudo zypper in rcm zsh kitty nvim ranger exa mpd ncmpcpp
```

```sh
systemctl --user enable mpd.service
systemctl --user start mpd.service
```

</details>

<details>
<br>
<summary><b>2. Install my dotfiles</b></summary>

clone this repo
```sh
git clone --depth 1 https://github.com/wizarash/dotfiles.git
```

rename directory
```sh
mv dotfiles ~/.dotfiles
```

copy fonts to .local/share/fonts
```sh
cp -r ~/.dotfiles/misc/fonts/* ~/.local/share/fonts/
```

sync dotfiles with rcm
```sh
rcup
```

for neovim use nvchad
```sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
zsh use ohmyzsh
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  
```
</details>
