# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
# tmuxp ws asking for this
export DISABLE_AUTO_TITLE="true"
export EDITOR="vim"
# Do not create *.pyc files on my dev machine
export PYTHONDONTWRITEBYTECODE=1
export UPDATE_ZSH_DAYS=7
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

ZSH_THEME="robbyrussel"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git django pip python postgres z command-not-found compleat safe-paste tmux vagrant)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim $HOME/.zshrc"
alias vimconfig="vim $HOME/.vimrc"
alias zshreload="source $HOME/.zshrc"
alias vimreload="source $HOME/.vimrc"
alias psql="sudo -u postgres psql"
alias nv="nvim"
alias gs="git status"
alias ga="git add -p"
alias gm="git commit"
alias pyc="find . -name '*.pyc' -delete"
alias dj="django-admin"
alias freeze="pip freeze | tr A-Z a-z | sort > requirements.txt"
# alias tmux from troubles
# https://github.com/direnv/direnv/wiki/Tmux
alias tmux "direnv exec / tmux"

# activate direnv hook
eval "$(direnv hook zsh)"

# pip zsh completion
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# search with grep in venv and project files
function s { grep -rnH "$1" .direnv/**/*.py **/*.py }

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
