#!/bin/zsh

# Level 6 -> 7 Prompt

: << 'END'
The password for the next level is stored somewhere on the server and has all of the following properties:

	owned by user bandit7
	owned by group bandit6
	33 bytes in size
END

sshpass -p $(cat ../pwd/5_6) ssh bandit6@bandit.labs.overthewire.org -p 2220

# Note that this time, we're trying to grab a file stored somewhere on the SERVER, meaning it could be anywhere!

find / -user bandit7 -group bandit6 -size 33c 2> /dev/null
# '2> /dev/null' directs all the error logs to the system's 'garbage dump', leaving us with:
#/var/lib/dpkg/info/bandit7.password

cat /var/lib/dpkg/info/bandit7.password
# z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S

# One-line solution:

find / -user bandit7 -group bandit6 -size 33c 2>/dev/null -exec cat {} \; | more

exit

