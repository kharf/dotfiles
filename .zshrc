export PATH=$PATH:/home/kharf/.linkerd2/bin
export PATH="${PATH}:${HOME}/.krew/bin"
export PATH="$PATH:$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"


export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export KIND_EXPERIMENTAL_PROVIDER=podman
export EDITOR=hx
export GOPRIVATE=github.com/mediamarktsaturn

alias dot='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

autoload -Uz compinit
compinit
# flux autocompletion
command -v flux >/dev/null && . <(flux completion zsh)

source /usr/share/nvm/init-nvm.sh 2> /dev/null

# Key mapping for qwertz
xmodmap -e "keycode 34 = braceleft braceright" 2> /dev/null
xmodmap -e "keycode 47 = parenleft parenright" 2> /dev/null
xmodmap -e "keycode 48 = bracketleft bracketright" 2> /dev/null

# prompt
eval "$(starship init zsh)"

#
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

