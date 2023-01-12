export ZSH="${ZDOTDIR:-$HOME}/.zsh"
export ZSH_SOURCES="$ZSH/sources"

eval "$(starship init zsh)"
for f in $(find "$ZSH_SOURCES/" -maxdepth 1 -type f -name \*.zsh) ; do
    source $f
done

setopt auto_cd

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/simoncoulton/.sdkman"
[[ -s "/Users/simoncoulton/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/simoncoulton/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
