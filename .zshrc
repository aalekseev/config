# Path to your oh-my-zsh installation.
export ZSH=/Users/anton/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=nanotech
# ZSH_THEME=avit

DEFAULT_USER=anton

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git themes django pip python postgres z colored-man-pages command-not-found compleat safe-paste tmux web-search)

# User configuration

#virtualenvwrapper
export WORKON_HOME=/Developer/VENV
export PROJECT_HOME=/Developer
source /usr/local/bin/virtualenvwrapper.sh

export PATH="/Users/anton/.node/lib/node_modules:/secret:/usr/local/go/bin:/Users/anton/.node/bin:/usr/local/lib/node_modules:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/bin/npm:/Users/anton/.rvm/gems/ruby-2.1.5/bin:/Users/anton/.rvm/gems/ruby-2.1.5@global/bin:/Users/anton/.rvm/rubies/ruby-2.1.5/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin/python3.4:/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7:/Users/anton/bin:/Users/anton/.rvm/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/lib:/usr/local/mysql/lib/"
export GOPATH="/Developer/go"
# export MANPATH="/usr/local/man:$MANPATH"
HOMEBREW_GITHUB_API_TOKEN=548c76ecfe1cd1bc055a69e98c227776436f202f
# export MAGICK_HOME=/Applications/MAMP/Library/
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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias p3="python3"
alias edit="subl"
alias psql="(. ~/.bash_profile; unset DYLD_FALLBACK_LIBRARY_PATH; psql)";
alias pm="python manage.py"
alias go="git checkout"
alias gs="git status"
alias ga="git add -p"
alias gm="git commit"
alias pmr="python manage.py runserver"
alias pms="python manage.py schemamigration"
alias pmm="python manage.py migrate"
alias pyc="find . -name='*.pyc' -delete"
alias rpi="ssh pi@192.168.1.38"

function proj() { deactivate && cd /Developer/$1 && source /Developer/VENV/$1/bin/activate }
function venv() { source /Developer/VENV/$1/bin/activate }
function cov() { coverage run manage.py test $1 --nologcapture }
