#!/bin/bash

# Level 15 -> 16 Prompt

: << 'END'
The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL encryption.

Helpful note: Getting “HEARTBEATING” and “Read R BLOCK”? Use -ign_eof and read the “CONNECTED COMMANDS” section in the manpage. Next to ‘R’ and ‘Q’, the ‘B’ command also works in this version of that command…
END

sshpass -p $(cat ../pwd/14_15) ssh bandit15@bandit.labs.overthewire.org -p 2220

openssl s_client -connect localhost:30001

# When prompted, give the password

jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt

# Correct!
# JQttfApK4SeyHwDlI9SXGR50qclOAil1

# closed


# Voila!
exit
