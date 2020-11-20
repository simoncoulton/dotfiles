alias vi="vim"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias vea="source .venv/bin/activate"
alias ved="deactivate"
alias it="itermocil"

alias dks="docker kill $(docker ps -q)"
alias dkrmc="docker rm $(docker ps -a -q)"
alias de="docker exec -it $1 $2"
alias drmi="docker images | grep none | awk '{ print $3; }' | xargs docker rmi"
alias dsp="docker system prune -a"
alias dvp="docker volume prune"
alias dps="docker ps"

alias codep="find . -iname *\.code-workspace -exec code {} \;"

# To get around https://github.com/sdispater/poetry/issues/536
alias poetry="python3 $HOME/.poetry/bin/poetry"
alias fh="fuck --hard"
alias fy="fuck --yeah"

pyclean () {
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
}
