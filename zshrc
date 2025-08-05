export PATH=~/Bin:$PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

autoload -U colors && colors
typeset -A colors
# Colors match Atom Dark theme
colors=(
	black   '%F{#282c34}'
	red     '%F{#be5046}'
	green   '%F{#98c379}'
	yellow  '%F{#e5c07b}'
	blue    '%F{#61afef}'
	magenta '%F{#c678dd}'
	cyan    '%F{#56b6c2}'
	white   '%F{#abb2bf}'
	orange  '%F{#d19a66}'
	pink    '%F{#e06c75}'
	reset   '%f'
)

# Git
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ [\1]/p'
}

# Virtual env
export VIRTUAL_ENV_DISABLE_PROMPT=1
function parse_virtual_env() {
	if [[ -n $VIRTUAL_ENV ]]; then
		echo "[$(basename $VIRTUAL_ENV)] "
	fi
}

setopt PROMPT_SUBST

export PROMPT="'${colors[green]}\$(parse_virtual_env)${colors[reset]}%2~${colors[orange]}\$(parse_git_branch) ${colors[magenta]}❯ ${colors[reset]}"

export EDITOR=nvim
export VISUAL=nvim
