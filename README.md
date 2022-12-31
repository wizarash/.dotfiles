<div align="center">
    <h1>✨ Wiz dotfiles ✨</h1>
    <h3></h3>
</div>

<div align="center">

![](https://img.shields.io/github/last-commit/wizarash/.dotfiles?color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&style=for-the-badge)
![](https://img.shields.io/github/stars/wizarash/.dotfiles?color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&style=for-the-badge)
[![](https://img.shields.io/github/repo-size/wizarash/.dotfiles?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41)](https://github.com/wizarash/.dotfiles)

</div>

## 🌏 Overview :
- Distro : openSUSE
- WM : ?
- Terminal : Kitty
- Shell : zsh
- Editor : neovim
- File Manager : Ranger

## 🛠️ Installation Guide:

<details>
<br>
<summary><b>1. Install Required Dependencies and Enable Services</b></summary>

- install rcm, zsh, kitty, exa, bat, nvim, ranger, mpd and ncmpcpp
```sh
sudo zypper in rcm zsh kitty bat nvim ranger exa mpd ncmpcpp zenith
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

copy fonts to .local/share/fonts
```sh
cp -r ~/.dotfiles/misc/fonts/* ~/.local/share/fonts/
```

sync dotfiles with rcm
```sh
rcup
```
</details>

## 🧩 additional :

- [***nvchad***](https://github.com/NvChad/NvChad) ~ blazing fast Neovim config providing solid defaults and a beautiful UI
- [***ohmyzsh***](https://github.com/ohmyzsh/ohmyzsh) ~ for managing Zsh configuration.


