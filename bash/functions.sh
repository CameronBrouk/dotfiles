function glines {
  read -p "Enter Date to start: " date
  git log --author=$1 --since=$date --pretty=tformat: --numstat \
  | gawk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "ADDED: %s | REMOVED: %s | TOTAL ADDED: %s\n", add, subs, loc }' -
}

function findNodeModules {
  find . -name "node_modules" -type d -prune -print | xargs du -chs
}

function removeNodeModulesRecursive {
  find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
}
