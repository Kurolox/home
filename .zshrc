export TERM="xterm-256color"
# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kuro/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select
autoload -Uz colors && colors
zstyle ':completion:*' rehash true
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Theming stuff
# POWERLEVEL9K_MODE='awesome-fontconfig'
#source  ~/powerlevel9k/powerlevel9k.zsh-theme
#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="008"
#POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="008"
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="075"
#POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="075"
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="075"
#POWERLEVEL9K_DIR_HOME_BACKGROUND="033"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="075"
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND='063'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='063'
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='063'
#source ~/.config/zsh/kurotheme
# This is the color scheme I'm using.
#color0:       #272727
#color8:       #282b34
#color1:       #2fcc93
#color9:       #7eeec6
#color2:       #3ea24f
#color10:      #8af69c
#color3:       #7bba4d
#color11:      #a8f470
#color4:       #92893d
#color12:      #ead41f
#color5:       #a65841
#color13:      #842e15
#color6:       #b1b360
#color14:      #4d4e21
#color7:       #b3b3b3
#color15:      #d2d2d2

# Colorized man pages: http://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"

}

source ~/antigen/antigen.zsh

# load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme pygmalion

# Tell antigen that you're done.
 antigen apply
