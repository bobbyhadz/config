################################################
# PATH TO OH-MY-ZSH INSTALLATION
################################################
export ZSH=~/.oh-my-zsh


################################################
# THEME
################################################
ZSH_THEME="robbyrussell"


################################################
# UPDATE ZSH WITHOUT PROMPTING
################################################
DISABLE_UPDATE_PROMPT="true"


################################################
# UPDATE ZSH EVERY # DAYS
################################################
export UPDATE_ZSH_DAYS=7


#######################################################################
# DISPLAY RED DOTS, WHILE WAITING FOR COMPLETION
#######################################################################
COMPLETION_WAITING_DOTS="true"


################################################
# PLUGINS
################################################
plugins=(
	git
	aws
	docker
	docker-compose
	httpie
	npm
	zsh-autosuggestions
	zsh-completions
  vi-mode
  jump
)

source $ZSH/oh-my-zsh.sh


###########################################################
# SET DEFAULT EDITOR
###########################################################
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

#######################################################################
# Disable Ctrl - S performing an 'XOFF' which stops commands from being
# received
#######################################################################
stty -ixon

#######################################################################
# VIM CURSOR AND MODE VISUALS
#######################################################################
function zle-line-init zle-keymap-select {
    #######################################################################
    # SHOW VIM MODE IN COMMAND PROMPT
    #######################################################################
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1


    #######################################################################
    # UPDATE VI-MODE CURSOR BASED ON MODE
    #######################################################################
    if [ "$TERM" = "xterm-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # normal mode - blinking block
            echo -ne "\e[1 q"
        else
            # insert mode - blinking vertical bar
            echo -ne "\e[5 q"
        fi
    fi


    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select


#######################################################################
# REMAP EXIT INSERT MODE TO 'jk'
#######################################################################
bindkey "jk" vi-cmd-mode


#######################################################################
# SET VIM KEYTIMEOUT TO 4 SECONDS
#######################################################################
export KEYTIMEOUT=10


###############################################################################
# FONT COLOR FOR ZSH-AUTOSUGGESTIONS ADDON
###############################################################################
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=12'

#######################################################################
# Enable command filtering - start typing and press up or down arrows
# and you only go through commands that match the filter
#######################################################################
bindkey '\eOA' history-beginning-search-backward
bindkey '\e[A' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '\e[B' history-beginning-search-forward    

################################################
# GENERIC ENVIRONMENT VARIABLES
################################################
export PATH=~/.local/bin:$PATH

# for Firefox Developer Edition browser                                                    
export PATH=/opt/firefox/firefox:$PATH

# For Vscode - because bind CTRL + Shift + e doesn't work otherwise
export GTK_IM_MODULE="xim"
alias code='GTK_IM_MODULE="xim" code'

# For NVM - node version manager
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
 # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 


########################################################
# INITIALIZE AUTOCOMPLETION FOR AWS CLI
########################################################
export PATH=/usr/local/bin:$PATH
# source ~/.local/bin/aws_zsh_completer.sh


#################################################################################
# SHOULD BE LAST IN CONFIG | SOURCE FOR ZSH-SYNTAX-HIGHLIGHTING ADDON
#################################################################################
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#################################################################################
# Source Aliases from ~/.zsh_aliases file
#################################################################################
if [ -e $HOME/.zsh_aliases ]; then
    source $HOME/.zsh_aliases
fi

#################################################################################
# Setup autocompletion for linux window session manager
#################################################################################
# begin lwsm completion
. <(lwsm --completion)
# end lwsm completion
