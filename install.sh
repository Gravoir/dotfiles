#!/bin/bash
# Backup existing files
for file in .zshrc .vimrc .tmux.conf; do
    if [ -f ~/$file ]; then
        cp ~/$file ~/${file}.backup.$(date +%Y%m%d)
        echo "Backed up $file"
    fi
done

# Symlink dotfiles
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

echo "Dotfiles installed! Run 'source ~/.zshrc' to reload."
