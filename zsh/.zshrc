export ZSH="${ZDOTDIR:-$HOME}/.zsh"
export ZSH_SOURCES="$ZSH/sources"
export ZSH_PLUGINS="$ZSH/plugins"

eval "$(starship init zsh)"

for f in $(find "$ZSH_SOURCES/" -maxdepth 1 -type f -name \*.zsh) ; do
    source $f
done

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.local/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$HOME/.cargo/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
