function glines {
  read -p "Enter Date to start: " date
  git log --author=$1 --since=$date --pretty=tformat: --numstat \
  | gawk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "ADDED: %s | REMOVED: %s | TOTAL ADDED: %s\n", add, subs, loc }' -
}
