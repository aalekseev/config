# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=miloshadzic

export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git pip python postgres z command-not-found compleat safe-paste tmux vagrant virtualenvwrapper)

# User configuration

#virtualenvwrapper
export WORKON_HOME="$HOME/code/VENV"
export PROJECT_HOME="$HOME/code"
source /usr/local/bin/virtualenvwrapper.sh

export PATH="$HOME/.node/lib/node_modules:/secret:/usr/local/go/bin:/Users/anton/.node/bin:/usr/local/lib/node_modules:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/bin/npm:/Users/anton/.rvm/gems/ruby-2.1.5/bin:/Users/anton/.rvm/gems/ruby-2.1.5@global/bin:/Users/anton/.rvm/rubies/ruby-2.1.5/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin/python3.4:/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7:/Users/anton/bin:/Users/anton/.rvm/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/lib:/usr/local/mysql/lib/:/usr/local/Cellar/gettext/0.19.7/bin"
export GOPATH="/Developer/go"
export GOBIN="/usr/bin"
HOMEBREW_GITHUB_API_TOKEN=548c76ecfe1cd1bc055a69e98c227776436f202f
export MAGICK_HOME=/usr/local/Cellar/imagemagick/6.9.2-8/

export DYLD_FALLBACK_LIBRARY_PATH="/usr/lib:/Applications/Postgres.app/Contents/MacOS/lib:$DYLD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH=/Library/PostgreSQL/9.4/lib

# tmuxp ws asking for this
export DISABLE_AUTO_TITLE="true"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nano'
# else
#   export EDITOR='vim'
# fi

export EDITOR='vim'

# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias psql="(. ~/.bash_profile; unset DYLD_FALLBACK_LIBRARY_PATH; psql)";
alias gs="git status"
alias ga="git add -p"
alias pyc="find . -name '*.pyc' -delete"

function xdiff() { git diff $1 HEAD --name-only | grep -v 'migrations' | grep -v 'static/fonts' | grep -v 'static/img' | xargs git diff $1 -- }
function cov() { coverage run manage.py test $1 --nologcapture }

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source /usr/local/opt/autoenv/activate.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export PATH="$HOME/.yarn/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
