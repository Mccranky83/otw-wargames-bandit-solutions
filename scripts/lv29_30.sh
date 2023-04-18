#!/bin/bash

# Level 29 -> 30 Prompt

: << 'END'
There is a git repository at ssh://bandit29-git@localhost/home/bandit29-git/repo. The password for the user bandit29-git is the same as for the user bandit29.
END


# repeat what we did in lv28_29, then:

git show fbbce0ec6c80acb0fdc00ebb4b5228dd868fd799:README.md 

: << 'END'
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: xbhV3HpNGlTIdnjUrdAlPzc2L6y9EOnS

END