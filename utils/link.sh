link(){
 # $1 is location of system file
 # $2 is location of dotfiles file
    if [[ -h $1 ]]; then
        if [[ "$(readlink $1)" = "$2" ]]; then
            echo "$1 is already linked"
        fi
        echo "$1 is a symlink"
    fi
}
