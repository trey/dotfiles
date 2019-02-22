alias h=history
alias ra="source ~/bin/dotfiles/bash/aliases" # reload aliases
alias server="python -m SimpleHTTPServer"
alias l="ls -lah"
alias game="emacs -batch -l dunnet"

# Utility Functions

# Git
alias gst="git status -sb"
alias gb="git branch"
alias gba="git branch -a"
alias gl="git pull"
alias gd="git diff"
# see ggpush, ggpushf in `functions.sh`

# Recursive Deleting
alias delpyc="find . -name '*.pyc' -exec rm {} \;"

# Fix Mac hardware
alias fixcamera="sudo killall VDCAssistant"
alias fixaudio="sudo killall coreaudiod"
