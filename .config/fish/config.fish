if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    cd $HOME
end

source ~/.config/fish/abbr.fish
set fish_greeting
