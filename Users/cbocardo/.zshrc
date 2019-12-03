# zsh config
# located in ~/.zshrc
# for setting Homebrew version to run as default shell, see:
# https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/
export PATH=~/.dotnet/tools:~/tools:$PATH
export ALTERNATE_EDITOR=""
export EDITOR="nvim"                    # $EDITOR opens in terminal
export VISUAL="nvim"                    # $VISUAL opens in GUI mode
export DEFAULT_USER=cbocardo

HISTFILE=~/.zsh/zsh_history
HISTSIZE=50000
SAVEHIST=10000

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt hist_reduce_blanks
setopt hist_find_no_dups

setopt noclobber                        # don't overwrite existing files
setopt ignoreeof                        # Ctrl-D won't kill the session
setopt auto_cd
setopt correctall                       # spelling correction for commands
setopt cdable_vars                      # directory aliases for cd command
setopt complete_in_word                 # completion from within a word/phrase
setopt no_case_glob                     # case-insensitive globbing

autoload -U compinit && compinit        # zsh-completions
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
    source "${HOME}/.iterm2_shell_integration.zsh"

source ~/tools/z/z.sh                       # z -jump around
source ~/.zsh/zsh-aliases                  # custom aliases
source ~/.zsh/zsh-machine-specific-aliases # not in source control

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

fpath=(/usr/local/share/zsh-completions $fpath) # activate zsh-completions

source ~/tools/powerlevel10k/powerlevel10k.zsh-theme
source ~/tools/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -e                                      # emacs key-bindings
bindkey '^y' autosuggest-accept                 # for zsh-autosuggestions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER=''
bindkey '^t' fzf-completion
bindkey '^i' $fzf_default_completion
