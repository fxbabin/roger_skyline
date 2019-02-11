#! /usr/sh

apt-get update -y && apt-get upgrade -y
cat requirements.txt | xargs apt-get install -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
