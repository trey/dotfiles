def check_file(file)
  full_path = File.expand_path(file)
  File.exist?(full_path) || File.symlink?(full_path)
end

desc "Setting up Trey's dotfiles"
task :setup do
  if check_file("~/.bash_profile") == false
    exec "ln -s ~/bin/dotfiles/bash/bash_profile ~/.bash_profile"
  end
  if check_file("~/.bashrc") == false
    exec "ln -s ~/bin/dotfiles/bash/bashrc ~/.bashrc"
  end
  if check_file("~/.inputrc") == false
    exec "ln -s ~/bin/dotfiles/bash/inputrc ~/.inputrc"
  end
  if check_file("~/.tm_properties") == false
    exec "ln -s ~/bin/dotfiles/tm/tm_properties ~/.tm_properties"
  end
  if check_file("~/.vimrc") == false
    exec "ln -s ~/bin/dotfiles/vim/vimrc ~/.vimrc"
  end
  if check_file("~/.gvimrc") == false
    exec "ln -s ~/bin/dotfiles/vim/gvimrc ~/.gvimrc"
  end
  if check_file("~/.vim") == false
    exec "ln -s ~/bin/dotfiles/vim ~/.vim"
  end
  if check_file("git/gitconfig") == false
    exec "cp git/gitconfig-example git/gitconfig"
  end
  if check_file("~/.gitconfig") == false
    exec "ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig"
  end
  if check_file("ssh/config") == false
    exec "cp ssh/config-example ssh/config"
  end
  exec "mkdir -p ~/.ssh"
  if check_file("~/.ssh/config") == false
    exec "ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config"
  end
end
