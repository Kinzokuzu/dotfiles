# PATH variable
export PATH="$HOME/.local/bin":$PATH
# End PATH variable

# Prompt customization
autoload -U colors && colors

# user@system:[current directory]$
# PROMPT='%F{173}%n%f@%F{139}%m%f:%F{67}%B%2~%b%F{167}$%f '

# [current directory]❯❯
PROMPT='%F{67}%B%2~%b%F{167}❯%f '
# End prompt customization

# Aliases
# Config files
alias vimrc="vim ~/.vimrc"
alias zathurarc="vim ~/.config/zathura/zathurarc"
alias zshrc="vim ~/.zshrc"

alias format=/Users/kinzo/Dev/code-formatter/main.py

# Other
alias home="cd ~; clear"
#alias ls="ls -1"
alias wiki="vim ~/vimwiki/index.wiki"
# End aliases

# Default editor
export EDITOR=vim
export VISUAL=vim
# End editor

# Vi keybindings
# Set vi bindings
bindkey -v
# Fix backspace in insert mode
bindkey "^?" backward-delete-char

function zle-line-init zle-keymap-select {
    RPS1="%K{186}%F{234}${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}%k%f"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
# End vi keybindings
