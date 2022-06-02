function __git_mrlog_complete() {
    current_dir=$(pwd)
    COMPREPLY=($(ls -1 $current_dir/packages))
}

complete -F __git_mrlog_complete git-mrlog

# completion function for git mrlog alias
function _git_mrlog() {
    current_dir=$(pwd)
    COMPREPLY=$(ls -1 $current_dir/packages)

    __gitcomp "${COMPREPLY}"
}
