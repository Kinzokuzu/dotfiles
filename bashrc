# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# set git functionality
function parse_git_branch {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ (\1)/p'
}

export PS1="\u@\h:\W\$(parse_git_branch) $ "
