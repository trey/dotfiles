Originally inspired by the Advanced Command Line PeepCode screencast.

Install things:

- [Install Homebrew.](https://brew.sh)
  - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [Install oh-my-zsh.](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation)
  - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- [Install zsh-syntax-highlighting.](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
  - `brew install zsh-syntax-highlighting`
- [Install Starship prompt.](https://starship.rs/#quick-install)
  - `brew install starship`
- Install a fancy font.
  - [Recursive Mono](https://www.recursive.design)
  - [Symbols Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/releases)
- [Install fzf.](https://github.com/junegunn/fzf/?tab=readme-ov-file#using-homebrew)
  - `brew install fzf`
  - Follow its instructions to finish installation.
- Helix stuff
  - Install Emmet
    - `npm i -g @olrtg/emmet-language-server`
  - Install spell checker
    - `npm install -g @vlabo/cspell-lsp`
  - Automatic light/dark mode switching
  - [Install Hammerspoon](https://github.com/Hammerspoon/hammerspoon?tab=readme-ov-file#homebrew)
    - `brew install hammerspoon`
    - Get it running and configure it how you want
      - `hs`
- [Set up GPG stuff for Git](https://github.com/trey/dotfiles/commit/59b5a834a8079778f70b013f929f1f1d9b97d12a).

Run the installer: `./install.sh`
