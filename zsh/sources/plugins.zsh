# zstyle ':autocomplete:*' fzf-completion yes

[ -f /opt/homebrew/etc/profile.d/z.sh ] && source /opt/homebrew/etc/profile.d/z.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# source $ZSH_DEPS/zsh-autocomplete/zsh-autocomplete.plugin.zsh 
source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
