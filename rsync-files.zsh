#!/bin/zsh
rsync -ti --progress /Users/cbocardo/.emacs.d/init.el /Users/cbocardo/ccb012100/emacs/.emacs.d/
rsync -ti --progress /Users/cbocardo/.emacs.d/keybindings.el /Users/cbocardo/ccb012100/emacs/.emacs.d/
rsync -ti --progress /Users/cbocardo/.emacs.d/macOS.el /Users/cbocardo/ccb012100/emacs/.emacs.d/
rsync -ti --progress /Users/cbocardo/.emacs.d/packages.el /Users/cbocardo/ccb012100/emacs/.emacs.d/
rsync -ti --progress /Users/cbocardo/.emacs.d/settings.el /Users/cbocardo/ccb012100/emacs/.emacs.d/
rsync -ti --progress /Users/cbocardo/.zshrc /Users/cbocardo/ccb012100/mac-configs/
rsync -ti --progress /Users/cbocardo/.zsh_aliases /Users/cbocardo/ccb012100/mac-configs/
rsync -ti --progress /Users/cbocardo/.zsh_unalias /Users/cbocardo/ccb012100/mac-configs/
rsync -ti --progress "/Users/cbocardo/Library/Application Support/Code/User/settings.json" /Users/cbocardo/ccb012100/vscode-settings/macos/
rsync -ti --progress "/Users/cbocardo/Library/Application Support/Code/User/keybindings.json" /Users/cbocardo/ccb012100/vscode-settings/macos/
