#!/bin/zsh

# Level 2 -> 3 Prompt

: << 'END'
The password for the next level is stored in a file called spaces in this filename located in the home directory
END

sshpass -p $(cat ../pwd/1_2) ssh bandit2@bandit.labs.overthewire.org -p 2220

ls -la

cat spaces\ in\ this\ filename
# or 'cat "spaces in this filename"'
# aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG

exit

