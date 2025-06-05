if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    
    # git aliase for dotfiles
    alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
end
