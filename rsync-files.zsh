## Emacs
rsync -ti --progress ~/.emacs.d/init.el ~/ccb012100/emacs/.emacs.d/
rsync -ti --progress ~/.emacs.d/macOS.el ~/ccb012100/emacs/.emacs.d/
rsync -ti --progress ~/.emacs.d/settings.el ~/ccb012100/emacs/.emacs.d/
# defuns
rsync -ti --progress ~/.emacs.d/defuns/defuns.el ~/ccb012100/emacs/.emacs.d/defuns
rsync -ti --progress ~/.emacs.d/defuns/theme-defuns.el ~/ccb012100/emacs/.emacs.d/defuns
rsync -ti --progress ~/.emacs.d/defuns/window-defuns.el ~/ccb012100/emacs/.emacs.d/defuns
# packages
rsync -ti --progress ~/.emacs.d/packages/packages.el ~/ccb012100/emacs/.emacs.d/packages
rsync -ti --progress ~/.emacs.d/packages/clojure-packages.el ~/ccb012100/emacs/.emacs.d/packages
rsync -ti --progress ~/.emacs.d/packages/helm-packages.el ~/ccb012100/emacs/.emacs.d/packages
rsync -ti --progress ~/.emacs.d/packages/packages-init.el ~/ccb012100/emacs/.emacs.d/packages
rsync -ti --progress ~/.emacs.d/packages/theme-packages.el ~/ccb012100/emacs/.emacs.d/packages
# keybindings
rsync -ti --progress ~/.emacs.d/keybindings/keybindings.el ~/ccb012100/emacs/.emacs.d/keybindings

rsync -ti --progress ~/.emacs.d/keybindings/custom-fn-keybindings.el \
      ~/ccb012100/emacs/.emacs.d/keybindings

rsync -ti --progress ~/.emacs.d/keybindings/windmove-keybindings.el \
      ~/ccb012100/emacs/.emacs.d/keybindings

## zsh
rsync -ti --progress ~/.zshrc ~/ccb012100/mac-configs/Users/cbocardo/
rsync -ti --progress ~/.zsh-aliases ~/ccb012100/mac-configs/Users/cbocardo/
rsync -ti --progress ~/.zsh-unalias ~/ccb012100/mac-configs/Users/cbocardo/

## Vim/Neovim
rsync -ti --progress ~/.config/nvim/init.vim \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/nvim/

rsync -ti --progress ~/.vim/vimrc ~/ccb012100/mac-configs/Users/cbocardo/.vim/

## VS Code
rsync -ti --progress ~/Library/Application\ Support/Code/User/settings.json \
      ~/ccb012100/vscode-settings/macos/

rsync -ti --progress ~/Library/Application\ Support/Code/User/keybindings.json \
      ~/ccb012100/vscode-settings/macos/

## Visual Studio for Mac
rsync -ti --progress ~/Library/VisualStudio/8.0/KeyBindings/Custom.mac-kb.xml \
      ~/ccb012100/mac-configs/visual-studio/

## Alacritty
rsync -ti --progress ~/.config/alacritty/alacritty.yml \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/alacritty/

## tmux
rsync -ti --progress ~/.tmux.conf ~/ccb012100/mac-configs/Users/cbocardo/

## bat
rsync -ti --progress ~/.config/bat/config/bat.conf \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/bat/

# TODO: add for JetBrains Rider - copy to git folder

## ranger
rsync -ti --progress ~/.config/ranger/rc.conf \
      ~/ccb012100/mac-configs/Users/cbocardo/.config/ranger/

## Spectacle
rsync -ti --progress ~/Library/Application\ Support/Spectacle/Shortcuts.json \
      ~/ccb012100/mac-configs/Users/cbocardo/Library/Application\ Support/Spectacle/
