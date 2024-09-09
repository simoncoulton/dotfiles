export ZSH="${ZDOTDIR:-$HOME}/.zsh"

local includes=("core" "aliases" "exports" "hooks" "plugins" "others")

for f in "${includes[@]}"; do
    local zsh_source="$ZSH/$f"
    for f in $(find -L "$zsh_source" -maxdepth 1 -type f -name \*.zsh) ; do
        source "$f"
    done 
done

## Everything below this is auto generated and can be removed...

export PATH=$PATH:/Users/simoncoulton/.spicetify
