#!/bin/bash

# Level 16 -> 17 Prompt

: << 'END'
The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then find out which of those speak SSL and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.
END

nmap localhost -p 31000-32000
# scanning for ports ranging from 31000 to 32000 that have a server listening on them...

nmap localhost -p 31000-32000 -sV -T4
# '-sV' enables version detection, allowing nmap to attempt to determine the version of any services running on the open ports.

# '-T4' sets the timing template of the scan to "aggressive," indicating that the scan should be performed more quickly but with higher resource utilization.

openssl s_client -connect localhost:31790

# pass the password of current level into prompt
JQttfApK4SeyHwDlI9SXGR50qclOAil1

# Now save the private key in /tmp/somename and access the next level

# cd into the directory where you saved your key and check your key's rwx permissions
#-rw-rw-r--    1 bandit16 bandit16   1675 Apr 14 03:11 bandit17key.private

# now groups and other users are not allowed to see this
# change permission with 'chmod', which stands for 'change mode'
# r->4, w->2, x->1

chmod 600 bandit17key.private

ssh -i /tmp/mccranky/bandit17key.private bandit17@localhost -p 2220

# Now we're logged in as bandit17

cat bandit17
# VwOSWtCA7lRKkTfbr2IDh6awj9RNZM5e

