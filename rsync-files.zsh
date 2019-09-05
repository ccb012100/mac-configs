# Emacs
rsync -ti --progress ~/.emacs.d/init.el ~/ccb012100/emacs/.emacs.d/
rsync -ti --progress ~/.emacs.d/defuns.el ~/ccb012100/emacs/.emacs.d/
rsync -ti --progress ~/.emacs.d/keybindings.el ~/ccb012100/emacs/.emacs.d/
rsync -ti --progress ~/.emacs.d/macOS.el ~/ccb012100/emacs/.emacs.d/
rsync -ti --progress ~/.emacs.d/packages.el ~/ccb012100/emacs/.emacs.d/
rsync -ti --progress ~/.emacs.d/settings.el ~/ccb012100/emacs/.emacs.d/

# zsh
rsync -ti --progress ~/.zshrc ~/ccb012100/mac-configs/
rsync -ti --progress ~/.zsh-aliases ~/ccb012100/mac-configs/
rsync -ti --progress ~/.zsh-unalias ~/ccb012100/mac-configs/

# Vim/Neovim
rsync -ti --progress ~/.config/nvim/init.vim ~/ccb012100/mac-configs/
rsync -ti --progress ~/.vim/vimrc ~/ccb012100/mac-configs/

# VS Code
rsync -ti --progress ~/Library/Application\ Support/Code/User/settings.json \
      ~/ccb012100/vscode-settings/macos/
rsync -ti --progress ~/Library/Application\ Support/Code/User/keybindings.json \
      ~/ccb012100/vscode-settings/macos/

# Visual Studio for Mac
rsync -ti --progress ~/Library/VisualStudio/8.0/KeyBindings/Custom.mac-kb.xml \
      ~/ccb012100/mac-configs/visual-studio/

# Alacritty
rsync -ti --progress ~/.config/alacritty/alacritty.yml ~/ccb012100/mac-configs/

# tmux
rsync -ti --progress ~/.tmux.conf ~/ccb012100/linux-configs/

# bat
rsync -ti --progress ~/.config/bat/config/bat.conf ~/ccb012100/linux-configs/

# TODO: add for JetBrains Rider - copy to git folder
