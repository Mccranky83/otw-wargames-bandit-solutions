#!/bin/zsh

# Level 4 -> 5 Prompt

: << 'END'
The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.
END

sshpass -p $(cat ../pwd/3_4) ssh bandit4@bandit.labs.overthewire.org -p 2220

ls
# inhere

cd inhere

ls -la
: << 'END'
total 48
drwxr-xr-x 2 root    root    4096 Feb 21 22:03 .
drwxr-xr-x 3 root    root    4096 Feb 21 22:03 ..
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file00
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file01
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file02
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file03
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file04
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file05
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file06
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file07
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file08
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file09
END

for i in $(ls); do file ./$i; done
: << 'END'
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: Non-ISO extended-ASCII text, with NEL line terminators
./-file06: Non-ISO extended-ASCII text, with no line terminators, with escape sequences
./-file07: ASCII text
./-file08: data
./-file09: data
END

# The prompt asked us to grab the only human-readable file
# In this case, it is ./-file07

cat ./-file07
# lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR

exit

