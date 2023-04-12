#!/bin/zsh

# Level 11 -> 12 Prompt

: << 'END'
The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions
END

sshpass -p $(cat ../pwd/10_11) ssh bandit11@bandit.labs.overthewire.org -p 2220

# We know that the letters have been rotated by 13 characters, and since there are only 26 lower-case and upper-case letters each, we just have to rotate another 13 to complete a full rotation, thereby restoring the data to its original state.

cat data.txt | tr 'a-zA-Z' 'n-za-mN-ZA-M'
# The password is JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv

# We can also create an alias first:
alias rot13="tr 'a-zA-Z' 'n-za-mN-ZA-M'"

# and then run:
cat data.txt | rot13

exit

