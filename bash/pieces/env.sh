export EDITOR="atom --wait"
export GIT_EDITOR="atom --wait"
export GEM_HOME=$HOME/gems
export PATH="/usr/local/bin:\
$HOME/bin:\
$HOME/bin/common:\
$HOME/gems/bin:$PATH\
$PATH"

# Work-specific overrides
if [ -f ~/.appomni ]; then
    . ~/.appomni
fi
