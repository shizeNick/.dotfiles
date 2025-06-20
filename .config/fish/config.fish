if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    
    # git aliase for dotfiles
    alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

    #PATHS
    set -gx PATH $PATH "/home/rain/.local/share/gem/ruby/3.4.0/bin"
end
