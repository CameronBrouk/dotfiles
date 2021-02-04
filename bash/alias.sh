# LS Aliases
alias ls="ls -a --sort=extension --width=80 --color=auto"
alias ll='ls -alF'
alias la='ls -A'

# Faster git typing
alias g="git"

# Making sure I am always using nvim
alias vi="nvim"
alias vim="nvim"

function glines {
  read -p "Enter Date to start: " date
  git log --author=$1 --since=$date --pretty=tformat: --numstat \
  | gawk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "ADDED: %s | REMOVED: %s | TOTAL ADDED: %s\n", add, subs, loc }' -
}
