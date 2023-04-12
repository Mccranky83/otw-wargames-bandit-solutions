#!/bin/zsh

# Level 8 -> 9 Prompt

: << 'END'
The password for the next level is stored in the file data.txt and is the only line of text that occurs only once
END

sshpass -p $(cat ../pwd/7_8) ssh bandit8@bandit.labs.overthewire.org -p 2220

cat data.txt | sort | uniq -c | grep -v 10
# 1 EN632PlfYiZbn3PhVK3XOGSlNInNE00t

# 'sort' sorts the content
# 'uniq' stands for unique, and option c counts the occurrence of each line
# 'grep -v' is kinda like the inverse of 'grep', and omits content from its search. In this case, it leaves out repeated lines and give us the answer

# Or you can do this:
cat data.txt | sort | uniq -u

# 'uniq -u' compares each line to adjacent lines and outputs that line if it is locally unique (compared to adjacent lines)

# To ensure that the line is globally unique, we run the sort command and pipe the output into uniq

exit

