#!/usr/bin/env sh

# Create the bin folder
mkdir -p ~/bin
# Files included
DOT_DIR="$HOME/.dotfiles"
FILES="Xmodmap alias bashrc commonrc dunstrc gemrc gitconfig gitignore i3 terraformrc tmux.conf vim vimrc vrapperrc zshrc"

# Link dotfiles
for f in $FILES; do
    FILE="$HOME/.$f"
    ln -sf $DOT_DIR/$f $FILE;
done

# Install hack font
./dot_bin/update_hack_font.sh

# Get vim-plug and install
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall

# Get tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Get zsh-syntax-highlightning
test -n "ZSH_CUSTOM" && git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins
