export VISUAL=nvim
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim

# Windows Paths
export DOWNLOADS=/mnt/c/Users/Camer/Downloads
export DESKTOP=/mnt/c/Users/Camer/Desktop
export DOCUMENTS=/mnt/c/Users/Camer/Documents
export PICTURES=/mnt/c/Users/Camer/Pictures
export WINDOWS=/mnt/c/Users/Camer/

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0




# export PATH=~/.local/bin:$PATH
# export PATH=$PATH:$VIMCONFIG/pack/bundle/start/fzf/bin
# export PATH=$(echo "$PATH" | sed -e 's/:\/mnt[^:]*//g') # strip out problematic Windows %PATH%
# export PATH=!/.npm-global/bin:$PATH

export NVM_DIR="$HOME/.nvm"

# PROJECTS
export SEED='projects/react-seed'
export NEST='~/projects/drive/dashboard-laravel/nest'
export BUILDER='~/projects/drive/dashboard-laravel/builder/'
export SWING='~/projects/stlswing/client'

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"

# if command -v pyenv 1>/dev/null 2>&1
# then
#   eval "$(pyenv init -)"\n
# fi
