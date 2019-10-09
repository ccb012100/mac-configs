# zsh config
# located in ~/.zshrc
# for setting Homebrew version to run as default shell, see:
# https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/
export PATH=~/.dotnet/tools:~/tools:$PATH
export ALTERNATE_EDITOR=""
export EDITOR="nvim"                   # $EDITOR opens in terminal
export VISUAL="nvim"                   # $VISUAL opens in GUI mode
export DEFAULT_USER=cbocardo

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt hist_reduce_blanks
setopt hist_find_no_dups

setopt noclobber                       # don't overwrite existing files
setopt ignoreeof                       # Ctrl-D won't kill the session
setopt auto_cd
setopt correctall                      # spelling correction for commands
setopt cdable_vars                     # directory aliases for cd command
setopt complete_in_word                # completion from within a word/phrase

autoload -U compinit && compinit       # zsh-completions

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
    source "${HOME}/.iterm2_shell_integration.zsh"

source ~/tools/z/z.sh                  # z -jump around
source ~/.zsh-aliases                  # custom aliases
source ~/.zsh-machine-specific-aliases # not in source control

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -lal }
function clla { cd "$@" && ls -lla }

# open new emacs-frame
function new-frame { emacsclient -e "(new-frame)" } 

# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

fpath=(/usr/local/share/zsh-completions $fpath)  # activate zsh-completions

source ~/tools/powerlevel10k/powerlevel10k.zsh-theme
source ~/tools/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -e                                       # emacs key-bindings
bindkey '^y' autosuggest-accept                  # for zsh-autosuggestions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
