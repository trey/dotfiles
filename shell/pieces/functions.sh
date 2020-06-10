function _getbranch() {
    branch_name=$(git symbolic-ref -q HEAD)
    branch_name=${branch_name##refs/heads/}
    branch_name=${branch_name:-HEAD}
}

function ggpush() {
    _getbranch
    echo "${GREEN}git push origin ${branch_name} ${1}${RESET}"
    git push origin $branch_name $1
}

function ggpushf() {
    _getbranch
    read -p "Are you sure you want to force push ${branch_name}? " answer
    case ${answer:0:1} in
        y|Y )
            echo "${GREEN}git push origin ${branch_name} --force-with-lease${RESET}"
            git push origin $branch_name --force-with-lease
        ;;
        * )
            echo "${GREEN}Ok, no push.${RESET}"
        ;;
    esac
}
