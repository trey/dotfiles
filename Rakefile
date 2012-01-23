# put new dotfiles here
# ---------------------
@files = [
  'bash/bash_profile',
  'bash/bashrc',
  'bash/inputrc',
  'git/gitconfig',
  'git/gitexcludes',
  'tm/jslintrc',
  'tm/tm_properties',
  'vim/vimrc',
  'vim/gvimrc'
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

desc "Set up Trey's dotfiles"
task :setup do
  @examples.each do |example|
    copy_example(example)
  end
  @files.each do |file|
    link_file(file)
  end

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
