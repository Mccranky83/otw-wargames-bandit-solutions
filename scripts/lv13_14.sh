#!/bin/bash

# Level 13 -> 14 Prompt

: << 'END'
The password for the next level is stored in /etc/bandit_pass/bandit14 and can only be read by user bandit14. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. Note: localhost is a hostname that refers to the machine you are working on
END

sshpass -p $(cat ../pwd/12_13) ssh bandit13@bandit.labs.overthewire.org -p 2220

ls
# sshkey.private

ssh bandit14@localhost -p 2220 -i sshkey.private
# 'i' for 'identifier'

whoami
# bandit14

# Yeah we made it in baby!

cd /etc/bandit_pass/
cat bandit14
# fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq

exit
