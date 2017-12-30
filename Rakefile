# put new dotfiles here
# ---------------------
@files = [
  'bash/bash_profile',
  'bash/bashrc',
  'bash/inputrc',
  'git/gitconfig',
  'git/gitexcludes'
]

# example files to copy before linking
# ------------------------------------
@examples = [
  'git/gitconfig',
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
task :install do
  @examples.each do |example|
    copy_example(example)
  end
  @files.each do |file|
    link_file(file)
  end
  unless check_file("/usr/local/share/git-core/contrib/diff-highlight/diff-highlight")
    %x{brew install git}
  end
end
