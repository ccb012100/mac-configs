# Sync config files to git repo
# to run every day at 12:00,
# run `crontab -e` and add the following line:
# "0 12 * * * ~/.rsync-files.zsh"

## Emacs

rsync -ti --progress \
      ~/.emacs.d/init.el \
      ~/ccb012100/emacs/.emacs.d/

rsync -ti --progress \
      ~/.emacs.d/macOS.el \
      ~/ccb012100/emacs/.emacs.d/

rsync -ti --progress \
      ~/.emacs.d/settings.el \
      ~/ccb012100/emacs/.emacs.d/

### functions

rsync -ti --progress \
      ~/.emacs.d/defuns/defuns.el \
      ~/ccb012100/emacs/.emacs.d/

rsync -ti --progress \
      ~/.emacs.d/defuns/theme-fns.el \
      ~/ccb012100/emacs/.emacs.d/defuns/

rsync -ti --progress \
      ~/.emacs.d/defuns/navigation-fns.el \
      ~/ccb012100/emacs/.emacs.d/defuns/

rsync -ti --progress \
      ~/.emacs.d/defuns/kill-fns.el \
      ~/ccb012100/emacs/.emacs.d/defuns/

rsync -ti --progress \
      ~/.emacs.d/defuns/text-manipulations-fns.el \
      ~/ccb012100/emacs/.emacs.d/defuns/

### keybindings
rsync -ti --progress \
      ~/.emacs.d/keybindings/keybindings.el \
      ~/ccb012100/emacs/.emacs.d/keybindings/

rsync -ti --progress \
      ~/.emacs.d/keybindings/custom-fn-keybindings.el \
      ~/ccb012100/emacs/.emacs.d/keybindings/

rsync -ti --progress \
      ~/.emacs.d/keybindings/windmove-keybindings.el \
      ~/ccb012100/emacs/.emacs.d/keybindings/

### packages
rsync -ti --progress \
      ~/.emacs.d/packages/theme-packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/clojure-packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/helm-packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/packages-init.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/file-mode-packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/navigation-packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/text-manipulation-packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

rsync -ti --progress \
      ~/.emacs.d/packages/display-packages.el \
      ~/ccb012100/emacs/.emacs.d/packages/

## zsh
rsync -ti --progress \
      ~/.zshrc \
      ~/ccb012100/mac-configs/Users/cbocardo/
rsync -ti --progress \
      ~/.zsh/zsh-aliases \
      ~/ccb012100/mac-configs/Users/cbocardo/.zsh/
rsync -ti --progress \
      ~/.zsh/zsh-unalias \
      ~/ccb012100/mac-configs/Users/cbocardo/.zsh/

## Vim/Neovim
rsync -ti --progress \
      ~/.config/nvim/init.vim \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/nvim/

rsync -ti --progress \
      ~/.vim/vimrc \
      ~/ccb012100/mac-configs/Users/cbocardo/.vim/

## VS Code
rsync -ti --progress \
      ~/Library/Application\ Support/Code/User/settings.json \
      ~/ccb012100/vscode-settings/macos/

rsync -ti --progress \
      ~/Library/Application\ Support/Code/User/keybindings.json \
      ~/ccb012100/vscode-settings/macos/

## Alacritty
rsync -ti --progress \
      ~/.config/alacritty/alacritty.yml \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/alacritty/

## tmux
rsync -ti --progress \
      ~/.tmux.conf \
      ~/ccb012100/mac-configs/Users/cbocardo/

## bat
rsync -ti --progress \
      ~/.config/bat/config/bat.conf \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/bat/

## ranger
rsync -ti --progress \
      ~/.config/ranger/rc.conf \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/ranger/

## Spectacle
rsync -ti --progress \
      ~/Library/Application\ Support/Spectacle/Shortcuts.json \
      ~/ccb012100/mac-configs/Users/cbocardo/Library/Application\ Support/Spectacle/

## karabiner
rsync -ti --progress \
      ~/.config/karabiner/karabiner.json \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/karabiner/

## powerlevel10k
rsync -ti --progress \
      ~/.p10k.zsh \
      ~/ccb012100/mac-configs/Users/cbocardo/
