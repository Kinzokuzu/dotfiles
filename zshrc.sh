export PATH=~/Bin:$PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

autoload -U colors && colors
typeset -A colors

# Colors to match Cyberdream
colors=(
	black   '%F{#16181a}'
	red     '%F{#ff6e5e}'
	green   '%F{#5eff6c}'
	yellow  '%F{#f1ff5e}'
	blue    '%F{#5ea1ff}'
	magenta '%F{#ff5ef1}'
	cyan    '%F{#5ef1ff}'
	white   '%F{#ffffff}'
	orange  '%F{#ffbd5e}'
	pink    '%F{#ff5ea0}'
    purple  '%F{#bd5eff}'
	reset   '%f'
)

# Git
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ ߂ \1/p'
}

# Virtual env
export VIRTUAL_ENV_DISABLE_PROMPT=1
function parse_virtual_env() {
	if [[ -n $VIRTUAL_ENV ]]; then
        echo "($(basename $VIRTUAL_ENV)) "
	fi
}

setopt PROMPT_SUBST

if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
    export PROMPT="┌ ${colors[green]}\$(parse_virtual_env)${colors[reset]}%2~${colors[cyan]}\$(parse_git_branch)
${colors[reset]}└ ${colors[magenta]}❯ ${colors[reset]}"
else
    # No colors
    export PROMPT="┌ \$(parse_virtual_env)%2~\$(parse_git_branch)
└ ❯ "
fi

export EDITOR=nvim
export VISUAL=nvim
