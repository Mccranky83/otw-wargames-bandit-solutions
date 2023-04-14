#!/bin/bash

# Level 14 -> 15 Prompt

: << 'END'
The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.
END

# Assuming we're still logged in as bandit14 on the remote server...

nc localhost 30000
fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq

# Correct!
# jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt

# ^C

exit
