export PATH=~/tools:$PATH
export ZSH="/Users/cbocardo/.oh-my-zsh" # Path to oh-my-zsh installation
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf z)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function cl { cd "$@" && ls -F } 	# cd then ls
function cla { cd "$@" && ls -a } 	# cd then ls -a
setopt cdable_vars               	# directory aliases for cd command

. ~/.zsh_aliases					# custom aliases
. ~/.zsh_unalias					# remove aliases set by zsh
. ~/.zsh_machine-specific-aliases	# aliases for using on a specific machine

#new-frame() { emacsclient -e "(new-frame)" }	# open new emacs-frame
bindkey '^ ' autosuggest-accept		# for zsh-autosuggestions: Ctrl+SPACE to accept
