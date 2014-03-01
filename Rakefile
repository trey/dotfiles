# put new dotfiles here
# ---------------------
@files = [
  'bash/ackrc',
  'bash/bash_profile',
  'bash/bashrc',
  'bash/inputrc',
  'git/gitconfig',
  'git/gitexcludes',
  'tm/jslintrc',
  'tm/tm_properties',
]

@atom_files = [
  'config.cson',
  'init.coffee',
  'keymap.cson',
  'snippets.cson',
  'styles.less'
]

# example files to copy before linking
# ------------------------------------
@examples = [
  'git/gitconfig',
  'ssh/config'
]

def check_file(file)
  full_path = File.expand_path(file)
  File.exist?(full_path) || File.symlink?(full_path)
end

def link_file(path)
  file = File.basename(path)
  if check_file("~/.#{file}")
    puts "~/.#{file} ... already exists\n"
  else
    %x{ln -s ~/bin/dotfiles/#{path} ~/.#{file}}
    puts "~/.#{file} ... LINKED!\n"
  end
end

def copy_example(path)
  if check_file("~/bin/dotfiles/#{path}")
    puts "example file ~/bin/dotfiles/#{path} ... already exists (don't forget to customize it)"
  else
    %x{cp #{path}-example #{path}}
    puts "example file ~/bin/dotfiles/#{path} ... COPIED! (go customize it now)"
  end
end

def link_st2_settings
  settings_path = "~/Library/Application\ Support/Sublime\ Text\ 2/Packages"
  full_path = File.expand_path(settings_path)
  if check_file(settings_path + '/User')
    puts "#{settings_path}/User ... already exists. Please delete it if you want to link this version."
  else
    %x{ln -s ~/bin/dotfiles/st2/User '#{full_path}'}
    puts "#{settings_path}/User ... LINKED!"
  end
end

def link_atom_settings
  @atom_files.each do |file|
    if check_file("~/.atom/#{file}")
      puts "~/.atom/#{file} ... already exists\n"
    else
      %x{ln -s ~/bin/dotfiles/atom/#{file} ~/.atom/#{file}}
      puts "~/.atom/#{file} ... LINKED!\n"
    end
  end
end

def link_dotjs
  if check_file("~/.js")
    puts "~/.js ... already exists. Please delete it if you want to link this version."
  else
    %x{ln -s ~/bin/dotfiles/js ~/.js}
    puts "~/.js ... LINKED!"
  end
end

def setup_zsh
  if check_file("~/.zshrc")
    puts "~/.zshrc ... already exists. Please delete it if you want to link this version."
  else
    # Install oh-my-zsh
    %x{curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh}
    %x{rm ~/.zshrc}
    %x{ln -s ~/bin/dotfiles/zsh/zshrc ~/.zshrc}
    puts "~/.zshrc ... LINKED (and oh-my-zsh installed)!"
  end
end

desc "Set up Trey's dotfiles"
task :install do
  @examples.each do |example|
    copy_example(example)
  end
  @files.each do |file|
    link_file(file)
  end
  link_st2_settings
  link_atom_settings
  link_dotjs
  setup_zsh

  # ssh config goes in a different place
  # ------------------------------------
  %x{mkdir -p ~/.ssh}
  if check_file("~/.ssh/config")
    puts "~/.ssh/config ... already exists"
  else
    %x{ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config}
    puts "~/.ssh/config ... linked!"
  end
end
