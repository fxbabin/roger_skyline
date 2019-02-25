# Debian Software install (as root)

## Update and install

```
apt-get update -y && apt-get upgrade -y
apt-get install vim -y
printf "sudo\nvim\ncurl\ngit\nzsh\nufw\nportsentry\nfail2ban\napache2\nmailutils" > requirements.txt
cat requirements.txt | xargs apt-get install -y
```

## Setting up vim

```
wget https://github.com/fxbabin/Dotfiles/blob/master/.vimrc?raw=true -O - > ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -E -c PluginInstall -c q -c q
```

## Installing oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
