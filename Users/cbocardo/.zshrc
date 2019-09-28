# zsh config
# located in ~/.zshrc
# for setting Homebrew version to run as default shell, see:
# https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/
export PATH=~/.dotnet/tools:~/tools:$PATH
export ZSH="/Users/cbocardo/.oh-my-zsh"     # Path to oh-my-zsh installation
export ALTERNATE_EDITOR=""
export EDITOR="nvim"              # $EDITOR opens in terminal
export VISUAL="nvim"     # $VISUAL opens in GUI mode
export DEFAULT_USER=cbocardo

ZSH_THEME="avit"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions fzf z zsh-completions)
autoload -U compinit && compinit # zsh-completions

source $ZSH/oh-my-zsh.sh            # run `upgrade_oh_my_zsh` to update
setopt cdable_vars                  # directory aliases for cd command
source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
    source "${HOME}/.iterm2_shell_integration.zsh"

. ~/tools/z/z.sh                    # z -jump around [https://github.com/rupa/z]
. ~/.zsh-aliases                    # custom aliases
. ~/.zsh-unalias                    # remove aliases set by zsh
. ~/.zsh-machine-specific-aliases   # aliases for using on a specific machine

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -lal }
function clla { cd "$@" && ls -lla }

function new-frame { emacsclient -e "(new-frame)" } # open new emacs-frame

bindkey '^o' autosuggest-accept # for zsh-autosuggestions: Ctrl+o to accept

# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
