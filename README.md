Originally inspired by the Advanced Command Line PeepCode screencast (RIP PeepCode).

To set things up:

1. Move this project’s folder to `~/bin/dotfiles`.
1. [Install Homebrew.](https://brew.sh)
   - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
1. [Install oh-my-zsh.](https://ohmyz.sh/#install)
   - `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
1. [Install zsh-syntax-highlighting.](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
   - `brew install zsh-syntax-highlighting`
1. [Install Spaceship prompt.](https://github.com/denysdovhan/spaceship-prompt#installing)
   - `git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"`
   - `ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`
1. Install [asdf](https://asdf-vm.com).
   - `brew install asdf`
1. Install a fancy font.
   - [Fira Code](https://github.com/tonsky/FiraCode#download--install)
   - Or some [Powerline-compatible font](https://github.com/powerline/fonts)
1. [Install fzf](https://github.com/junegunn/fzf/#using-homebrew-or-linuxbrew)
   - `brew install fzf`
   - Follow its instructions to finish installation.
1. Run `rake install` from inside the `~/bin/dotfiles` folder.
1. `mkdir -p ~/.config&&ln -s ~/bin/dotfiles/shell/starship.toml ~/.config/starship.toml`

---

I don’t have Oh-My-Zsh set up for [automatic updates](https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#disable_auto_update). To check for updates (as of 2021-06-12, this command doesn’t seem to work):

```shell
source $ZSH/tools/check_for_upgrade.sh
```

To update:

```shell
omz update
```
