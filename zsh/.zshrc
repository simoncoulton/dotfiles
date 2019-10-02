export ZSH="${ZDOTDIR:-$HOME}/.zsh"
export ZPREZTODIR="${ZDOTDIR:-$HOME}/.zprezto"
export ZSH_SOURCES="$ZSH/sources"

source $ZPREZTODIR/init.zsh
for f in $(find "$ZSH_SOURCES/" -maxdepth 1 -type f -name \*.zsh) ; do
    source $f
done

