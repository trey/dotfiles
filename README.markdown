Inspired by [the Advanced Command Line PeepCode screencast](https://peepcode.com/products/advanced-command-line).

To set things up:

1. Move/rename this project's folder to `~/bin/dotfiles`
2. `ln -s ~/bin/dotfiles/bash/bash_profile ~/.bash_profile`
3. `ln -s ~/bin/dotfiles/bash/bashrc ~/.bashrc`
4. `ln -s ~/bin/dotfiles/bash/inputrc ~/.inputrc`
5. Copy `git/gitconfig-example` to `git/gitconfig` and set it up how you like it.
6. `ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig`
7. Copy `ssh/config-example` to `ssh/config` and set it up how you like it.
8. `ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config` (assuming you have an `~/.ssh` folder already)

[More information about configuring Git](http://solutions.treypiepmeier.com/2009/03/09/a-happy-git-environment-on-osx-leopard/)
