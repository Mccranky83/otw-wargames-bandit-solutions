#!/bin/zsh

# Level 0 -> 1 Prompt

: << 'END'
The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.
END

# login session
sshpass -p $(cat ../pwd/0) ssh bandit0@bandit.labs.overthewire.org -p 2220

find . -type f -name readme
# ./readme

cat ./readme
# NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL

exit

