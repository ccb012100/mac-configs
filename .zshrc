export PATH=~/.dotnet/tools:~/tools:$PATH
export ZSH="/Users/cbocardo/.oh-my-zsh" # Path to oh-my-zsh installation
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode

ZSH_THEME="powerlevel9k/powerlevel9k"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf z)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function cl { cd "$@" && ls -F } 	# cd then ls
function cla { cd "$@" && ls -a } 	# cd then ls -a
setopt cdable_vars               	# directory aliases for cd command

. ~/tools/z/z.sh					# z -jump around [https://github.com/rupa/z]

. ~/.zsh_aliases					# custom aliases
. ~/.zsh_unalias					# remove aliases set by zsh
. ~/.zsh_machine-specific-aliases	# aliases for using on a specific machine

#new-frame() { emacsclient -e "(new-frame)" }	# open new emacs-frame
bindkey '^ ' autosuggest-accept		# for zsh-autosuggestions: Ctrl+SPACE to accept
