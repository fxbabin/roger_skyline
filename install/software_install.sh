#! /usr/sh

apt-get update -y && apt-get upgrade -y
apt-get install vim -y
printf "sudo\nvim\ncurl\ngit\nzsh\nufw\nportsentry\nfail2ban\napache2\nmailutils" > requirements.txt

cat requirements.txt | xargs apt-get install -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
