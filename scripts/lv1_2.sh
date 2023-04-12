#!/bin/zsh

# Level 1 -> 2 Prompt

: << 'END'
The password for the next level is stored in a file called - located in the home directory
END

sshpass -p $(cat ../pwd/0_1) ssh bandit1@bandit.labs.overthewire.org -p 2220

# Note that the filename is '-', a reserved operator.
cat ./-
# rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi

exit

