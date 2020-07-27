# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
source ~/antigen.zsh

# Load antigen library
antigen use oh-my-zsh

# Bundle from the default robbyrussell's oh-my-zsh

antigen bundle git
antigen bundle heroku
#antigen bundle sobolevn/wakatime-zsh-plugin
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle pip
antigen apply
# End antigen

POWERLEVEL9K_MODE='nerdfont-complete'
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="agnoster"
#POWERLEVEL9K_DISABLE_RPROMPT=true
# Stable
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=”▶“
#POWERLEVEL9K_BATTERY_STAGES=($'\u2581 ' $'\u2582 ' $'\u2583 ' $'\u2584 ' $'\u2585 ' $'\u2586 ' $'\u2587 ' $'\u2588 ')
# Stable

# Exp-1


# prompt_codetalk() {
    # local content='\uF17C c{}deTalk'
    # $1_prompt_segment "$0" "$2" "black" "white" "$content" "#"
# }
# 
# 
# 
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
# POWERLEVEL9K_RVM_BACKGROUND="black"
# POWERLEVEL9K_RVM_FOREGROUND="249"
# POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
# POWERLEVEL9K_TIME_BACKGROUND="black"
# POWERLEVEL9K_TIME_FOREGROUND="white"
# POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"
# POWERLEVEL9K_RVM_BACKGROUND="black"
# POWERLEVEL9K_RVM_FOREGROUND="249"
# POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
# POWERLEVEL9K_STATUS_VERBOSE=false
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='orange'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_HIDE_TAGS='false'
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
# POWERLEVEL9K_FOLDER_ICON=''
# POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
# POWERLEVEL9K_STATUS_VERBOSE=false
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
# POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
# POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
# POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
# POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
# POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
                #POWERLEVEL9K_CUSTOM_BATTERY_STATUS="prompt_zsh_battery_level"
                #POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND='blue'
                #POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND='black'
                #POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(codetalk context custom_internet_signal  ssh root_indicator dir dir_writable vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context custom_internet_signal  ssh root_indicator dir dir_writable vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status  custom_battery_status_joined time)
# HIST_STAMPS="dd/mm/yyyy"
# DISABLE_UPDATE_PROMPT=true
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
# POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='purple'
# 
# POWERLINE9K_CODETALK_DEFAULT_BACKGROUND='black'
# POWERLINE9K_CODETALK_DEFAULT_FOREGROUND='red'

# Exp-1



# Exp -2
# Link: https://medium.com/@christyjacob4/powerlevel9k-themes-f400759638c2

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir newline status)
POWERLEVEL9K_OS_ICON_BACKGROUND=024 #navyblue
POWERLEVEL9K_OS_ICON_FOREGROUND=202 #orangered1
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=249 # white
POWERLEVEL9K_DIR_HOME_FOREGROUND=249
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=249
POWERLEVEL9K_DIR_ETC_FOREGROUND=249
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=249
POWERLEVEL9K_DIR_HOME_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_ETC_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
#POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_BACKGROUND=017
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=017
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time)
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=017 # navyblue
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=040 # green3a
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=017 # navyblue
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=220 # gold1
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=236 #grey19
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=160 #red3a
POWERLEVEL9K_SHOW_CHANGESET=true


# Exp -2
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /home/cosmic/.oh-my-zsh/custom/plugins/wakatime-zsh-plugin/wakatime.plugin.zsh 
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='nvim'
fi

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
alias cpt="cp /mnt/d/WSL/cpt/* ./"
alias sagu="sudo apt-get update"
alias sagg="sudo apt-get upgrade"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cosmic/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

cd /mnt/d/
