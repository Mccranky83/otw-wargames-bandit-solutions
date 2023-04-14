#!/bin/zsh

# Level 18 -> 19 Prompt

: << 'END'
There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new

NOTE: if you have solved this level and see ‘Byebye!’ when trying to log into bandit18, this is related to the next level, bandit19

END

sshpass -p $(cat ../pwd/17_18) ssh bandit18@bandit.labs.overthewire.org -p 2220
# Byebye!
# Connection to bandit.labs.overthewire.org closed.

# Apparently we can still inject arguments even if we can't actually login

sshpass -p $(cat ../pwd/17_18) ssh bandit18@bandit.labs.overthewire.org -p 2220 ls
# readme

sshpass -p $(cat ../pwd/17_18) ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
# awhqfNnAbc1naukrpqDYcF95h7HoMTrC
