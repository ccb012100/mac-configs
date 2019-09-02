export PATH=~/.dotnet/tools:~/tools:$PATH
export ZSH="/Users/cbocardo/.oh-my-zsh"         # Path to oh-my-zsh installation
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"              # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"     # $VISUAL opens in GUI mode
export DEFAULT_USER=cbocardo

POWERLEVEL9K_MODE='nerdfont-complete' # has to be set before ZSH_THEME
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context history time dir vcs)
POWERLEVEL9K_TIME_FORMAT="%D{%r}"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf z)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -lal }
function clla { cd "$@" && ls -lla }

setopt cdable_vars                  # directory aliases for cd command

. ~/tools/z/z.sh                    # z -jump around [https://github.com/rupa/z]
. ~/.zsh-aliases                    # custom aliases
. ~/.zsh-unalias                    # remove aliases set by zsh
. ~/.zsh-machine-specific-aliases   # aliases for using on a specific machine

source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

new-frame() { emacsclient -e "(new-frame)" }	# open new emacs-frame
bindkey '^ ' autosuggest-accept		# for zsh-autosuggestions: Ctrl+SPACE to accept
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi # show when running in a shell spawned by ranger
