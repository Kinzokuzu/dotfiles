# PATH variable
export PATH=~/Bin:$PATH
# End PATH variable

# Prompt customization
autoload -U colors && colors

# Define colors using hex values for true-color terminals
typeset -A colors
# colors=(
#   red '%F{#ff6188}'
#   yellow '%F{#ffd866}'
#   purple '%F{#ab9df2}'
#   reset '%f'  # Resets to default color
# )

colors=(
  red '%F{#e86671}'
  yellow '%F{#e5c07b}'
  purple '%F{#c678dd}'
	blue '%F{#61afef}'
	green '%F{#98c379}'
  reset '%f'  # Resets to default color
)

# set git functionality
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ (\1)/p'
}

setopt PROMPT_SUBST

# [current directory] ❯
export PROMPT="%2~${colors[green]}\$(parse_git_branch)${colors[reset]} ${colors[blue]}❯ ${colors[reset]}"
# No color
# export PROMPT='%2~$(parse_git_branch) ❯ '
# End prompt customization

# Default editor
export EDITOR=nvim
export VISUAL=nvim
# End editor

# Start aliases
alias home=cd ~
alias viewpage="live-server --browser=\"Google Chrome\""

# End aliases

# zsh-vi-mode
function zvm_config() {
	# ZVM_LINE_INIT_MODE=$ZVM_MODE_NORMAL
}

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kinzo/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kinzo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kinzo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kinzo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resourcessource
