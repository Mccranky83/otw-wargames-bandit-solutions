#!/bin/bash

# Level 27 -> 28 Prompt

: << 'END'
There is a git repository at ssh://bandit27-git@localhost/home/bandit27-git/repo. The password for the user bandit27-git is the same as for the user bandit27.
END

cd /tmp

mktemp -d

# `cd` into the temp folder we just created

git clone ssh://bandit27-git@localhost:2220/home/bandit27-git/repo
# log into the SSH server on port 2220, not the default 22!

cat /repo/README
# The password to the next level is: AVanL161y9rsbcJIsFHuw35rjaOM19nR
