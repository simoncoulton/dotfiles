alias vi="vim"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias vea="source .venv/bin/activate"
alias ved="deactivate"
alias it="itermocil"
alias dks="docker kill $(docker ps -q)"
alias dkrmc="docker rm $(docker ps -a -q)"
alias de="docker exec -it $1 $2"

pyclean () {
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
}
