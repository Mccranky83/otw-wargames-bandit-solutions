#!/bin/zsh

# Level 7 -> 8 Prompt

0 << 'END'
The password for the next level is stored in the file data.txt next to the word millionth
END

sshpass -p $(cat 6_7) ssh bandit7@bandit.labs.overthewire.org -p 2220

ls
# data.txt

ls -lh data.txt
#-rw-r----- 1 bandit8 bandit7 4.0M Feb 21 22:03 data.txt

# It's HUGE! Let's see how many lines it contains...
wc -l data.txt
# 98567 data.txt
# Glad we didn't 'cat' the file at first sight! BTW, 'wc' stands for word count, option -l stands for line

cat data.txt | grep "millionth"
# millionth	TESKZC0XvTetK0S9xNwm25STk5iWrBvP

exit

