#! /usr/sh

# update and upgrade
apt-get update -y && apt-get upgrade -y

# install needed tools
cat requirements.txt | xargs apt-get install -y

# set vim configuration
wget https://github.com/fxbabin/Dotfiles/blob/master/.vimrc?raw=true -O - > ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -E -c PluginInstall -c q -c q

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
