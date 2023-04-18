#!/bin/bash

# Level 19 -> 20 Prompt

: << 'END'
To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.
END

sshpass -p $(cat ../pwd/18_19) ssh bandit19@bandit.labs.overthewire.org -p 2220

ls -lh bandit20-do
# -rwsr-x--- 1 bandit20 bandit19 15K Feb 21 22:03 bandit20-do

# Note that user's execution privilege displays a 's' instead of a 'x'. The 's' stands for 'setuid binary'. This means that the executable file will run with the privileges of the file's owner, rather than with the permissions of the user who is running the file. Plus, group members have execution privilege.

./bandit20-do id
# uid=11019(bandit19) gid=11019(bandit19) euid=11020(bandit20) groups=11019(bandit19)
# group members include bandit19

./bandit20-do cat /etc/bandit_pass/bandit20
# VxCazJaVykI6W36BkBU0mJTCM8rR95XT

exit
