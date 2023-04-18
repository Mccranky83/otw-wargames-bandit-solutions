#!/bin/bash

# Level 30 -> 31 Prompt

: << 'END'
There is a git repository at ssh://bandit30-git@localhost/home/bandit30-git/repo. The password for the user bandit30-git is the same as for the user bandit30.
END


# repeat what we did in lv29_30, then:
cat .git/packed-refs
# pack-refs with: peeled fully-peeled sorted 
# cf552c166d78421e64ddf52f850e680075d216e1 refs/remotes/origin/master
# 831aac2e2341f009e40e46392a4f5dd318483019 refs/tags/secret

git cat-file -t 831aac2e2341f009e40e46392a4f5dd318483019
# blob

git cat-file -p 831aac2e2341f009e40e46392a4f5dd318483019
# OoffzGDlzhAlerFJ2cAiz1D41JW1Mhmt
