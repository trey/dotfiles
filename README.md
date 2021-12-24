Originally inspired by the Advanced Command Line PeepCode screencast.

Install things:

- [Install Homebrew.](https://brew.sh)
  - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [Install oh-my-zsh.](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms)
  - `brew install zsh`
- [Install zsh-syntax-highlighting.](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
  - `brew install zsh-syntax-highlighting`
- [Install Starship prompt.](https://starship.rs/#quick-install)
  - `brew install starship`
- Install a fancy font.
  - For VS Code: [Fira Code](https://github.com/tonsky/FiraCode#download--install).
  - For Terminal (including in VS Code), some [Nerd Font](https://www.nerdfonts.com/font-downloads) [version](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Regular).
- [Install fzf.](https://github.com/junegunn/fzf/#using-homebrew-or-linuxbrew)
  - `brew install fzf`
  - Follow its instructions to finish installation.
- Maybe [set up GPG stuff for Git](https://github.com/trey/dotfiles/commit/59b5a834a8079778f70b013f929f1f1d9b97d12a).
- Maybe install [asdf](https://asdf-vm.com).

Set up configuration files. Something like…

```shell
mkdir -p ~/.config&&ln -s shell/starship.toml ~/.config/starship.toml
cp git/gitconfig-example git/gitconfig&&ln -s git/gitconfig ~/.gitconfig # (edit this one)
ln -s git/gitexcludes ~/.gitexcludes
ln -s shell/zshrc ~/.zshrc
```

I don’t have Oh-My-Zsh set up for [automatic updates](https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#disable_auto_update). To update: `omz update`.
