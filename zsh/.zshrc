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
)

source $ZSH/oh-my-zsh.sh


###########################################################
# SET DEFAULT EDITOR 
###########################################################
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim


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


################################################
# GENERIC ENVIRONMENT VARIABLES 
################################################
export PATH=~/.local/bin:$PATH


########################################################
# INITIALIZE AUTOCOMPLETION FOR AWS CLI 
########################################################
source ~/.local/bin/aws_zsh_completer.sh


#################################################################################
# SHOULD BE LAST IN CONFIG | SOURCE FOR ZSH-SYNTAX-HIGHLIGHTING ADDON 
#################################################################################
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
