#!/bin/zsh

# Level 10 -> 11 Prompt

: << 'END'
The password for the next level is stored in the file data.txt, which contains base64 encoded data
END

sshpass -p $(cat ../pwd/9_10) ssh bandit10@bandit.labs.overthewire.org -p 2220

cat data.txt
# VGhlIHBhc3N3b3JkIGlzIDZ6UGV6aUxkUjJSS05kTllGTmI2blZDS3pwaGxYSEJNCg==

# Note that a base64 encoded file ends with the '=' character
# base64 is an encoding scheme that encodes binary data into ASCII with each base 64 digit representing 6 bits of data, 'cus ya know, 2^6 = 64

cat data.txt | base64 -d
# Or just: base64 -d data.txt

# Then we get: The password is 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM

exit

