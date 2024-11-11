# PATH variable
export PATH=~/Bin:$PATH
# End PATH variable

# Prompt customization
autoload -U colors && colors

# set git functionality
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ (\1)/p'
}

setopt PROMPT_SUBST

# user@system:[current directory]$
# export PROMPT='%F{173}%n%f@%F{139}%m%f:%F{67}%B%2~%b%F{167}$%f '

# [current directory]❯❯
export PROMPT='%2~$(parse_git_branch) ❯ '
# End prompt customization

# Default editor
export EDITOR=nvim
export VISUAL=nvim
# End editor
