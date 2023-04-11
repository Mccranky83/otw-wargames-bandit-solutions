#!/bin/zsh

# Level 0 Prompt

0 << 'END'
The goal of this level is for you to log into the game using SSH. The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.
END

# Better install 'sshpass' util first...
# 'sshpass' stands for 'Non-interactive ssh password authentication'
# Homebrew deleted this formulae a while ago, so we'll install via MacPorts by running:
sudo port install sshpass

# Let's create a folder for all the keys we'll come across:
cd ~; mkdir bandit-wargame; cd bandit-wargame

# Create our first key:
echo bandit0 > 0

# To connect to the game's server, we run:
sshpass -p $(cat 0) ssh bandit0@bandit.labs.overthewire.org -p 2220

# That's it! Login complete.
