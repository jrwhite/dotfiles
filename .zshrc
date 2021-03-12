# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jarod/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="sunaku"

# Additional ZSH options
setopt autocd 
setopt extended_history     ## Store timestamp/runtime in history file
setopt extendedglob 
setopt inc_append_history
setopt ksh_glob 
setopt notify
setopt print_exit_value     ## Print non-zero exit status
setopt prompt_subst 
setopt rm_star_wait         ## Force a pause before allowing an answer on rm *
setopt transient_rprompt    ## Remove the right-side prompt if the cursor comes close

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git iterm2 autojump vi-mode web-search zsh-interactive-cd history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

VI_MODE_SET_CURSOR=true
#bindkey '^k' up-line-or-search
bindkey '^k' history-substring-search-up
#bindkey '^j' down-line-or-search
bindkey '^j' history-substring-search-down
bindkey -M viins 'jj' vi-cmd-mode
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

# grpc path stuff
export GRPC_INSTALL_DIR=$HOME/.local
export PATH="$PATH:$GRPC_INSTALL_DIR/bin"

# use python3
alias python=python3

# use exa instead of ls
alias ls=exa
alias t="exa -T"

# bin path
export PATH="$PATH:$HOME/bin"

# cheat.sh
alias cht="cht.sh"
alias cheat="cht.sh --shell"

# farmwise embedded docker in current directory
alias dockerhere="docker run -it --rm -v $(pwd):/mnt embedded"
