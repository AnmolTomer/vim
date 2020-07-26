# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#------------------------------------------------------------------------------
source /home/cosmic/.oh-my-zsh/custom/plugins/antigen.zsh
antigen use oh-my-zsh
antigen bundle sobolevn/wakatime-zsh-plugin
antigen apply
#-----------------------------------------------------------------------------

# GIT ALIASES
alias gupdate="git pull up master --tags && gpom --tags"
alias gpum="git push up master"
alias gpom="git push origin master"
alias pushall="gpom --tags && gpum --tags"
alias pushlive="git push origin master && git push live master"
alias gpll="git pull origin master"
alias gcom="git checkout master"
alias gst="git status"
alias gaa="git add --all"
alias gcv="git commit -v -a"
# CP TEMPLATE
alias cpt="touch a.cpp input.txt output.txt"
#RCLONE
alias rlr="rclone listremotes"
alias d="cd /media/cosmic/Data && ls"
#alias dv="dirs -v | head -10'

#alias update and upgrade
alias sagu="sudo apt-get update"
alias sagg="sudo apt-get upgrade"


# A good short hand of git commands https://jasonm23.github.io/oh-my-git-aliases.html
# Path to your oh-my-zsh installation.
export ZSH="/home/cosmic/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#export zgen="/home/cosmic/.zgen"
#source "$zgen/zgen.zsh"

#if !zgen saved; then
 # zgen load sobolevn/wakatime-zsh-plugin
  # zgen save
#fi
    

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
plugins=(
git
zsh-syntax-highlighting
)
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cosmic/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/cosmic/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/cosmic/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/cosmic/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#export PATH=/usr/local/cuda-10.2/bin:/usr/local/cuda-10.2/NsightCompute-2019.1${PATH:+:${PATH}}
#export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
#export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}

export PATH=/usr/local/cuda-10.1/bin:/usr/local/cuda-10.2/NsightCompute-2019.1${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
export PATH=/home/cosmic/software/psql/bin:$PATH
NODE_ENV="/usr/local/bin/node"
export PATH="$PATH:$NODE_ENV\n"
export PATH=$PATH:/usr/lib/jvm/jdk-14.0.1/bin

# ------------------------------------------------



cat ~/Downloads/fsoc.txt
