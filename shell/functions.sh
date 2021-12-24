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

if [ -d ~/Code/shortener ]; then
    function shorten() { node ~/Code/shortener/node_modules/.bin/netlify-shortener "$1" "$2"; }
fi
