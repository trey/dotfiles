function _getbranch() {
    branch_name=$(git symbolic-ref -q HEAD)
    branch_name=${branch_name##refs/heads/}
    branch_name=${branch_name:-HEAD}
}

function ggpushf() {
    _getbranch
    read "answer?Are you sure you want to force push ${branch_name}? "
    if [[ "$answer" =~ ^[Yy]$ ]]
    then
        echo "${fg[green]}git push origin ${branch_name} --force-with-lease${reset_color}"
        git push origin $branch_name --force-with-lease
    else
        echo "${fg[green]}Ok, no push.${reset_color}"
    fi
}
function cd() {
  builtin cd "$@"

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    ## If venv folder is found then activate it
      if [[ -d ./venv ]] ; then
        source ./venv/bin/activate
      fi
      if [[ -d ./.venv ]] ; then
        source ./.venv/bin/activate
      fi
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate
      parentdir="$(dirname "$VIRTUAL_ENV")"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        deactivate
      fi
  fi

  if [[ -f .nvmrc ]]; then
    nvm use > /dev/null
  fi
}


if [ -d ~/Code/shortener ]; then
    function shorten() { node ~/Code/shortener/node_modules/.bin/netlify-shortener "$1" "$2"; }
fi
