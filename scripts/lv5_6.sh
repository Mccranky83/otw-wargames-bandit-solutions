#!/bin/zsh

# Level 5 -> 6 Prompt

: << 'END'
The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:

	human-readable
	1033 bytes in size
	not executable
END

sshpass -p $(cat ../pwd/4_5) ssh bandit5@bandit.labs.overthewire.org -p 2220

ls -alR
# a for all, l for long-formatted, R for recursive

find . -readable -size 1033c -not -executable
# ./inhere/maybehere07/.file2

cat ./inhere/maybehere07/.file2
# P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU

exit

