#!/bin/zsh

# Level 3 -> 4 Prompt

: << 'END'
The password for the next level is stored in a hidden file in the inhere directory.
END

sshpass -p $(cat ../pwd/2_3) ssh bandit3@bandit.labs.overthewire.org -p 2220

ls -la
# drwxr-xr-x  2 root root 4096 Feb 21 22:03 inhere

cd inhere; ls -la
# -rw-r----- 1 bandit4 bandit3   33 Feb 21 22:03 .hidden

cat .hidden
# 2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe

exit

