#!/bin/bash

# Level 28 -> 29 Prompt

: << 'END'
There is a git repository at ssh://bandit28-git@localhost/home/bandit28-git/repo. The password for the user bandit28-git is the same as for the user bandit28.
END

git clone ssh://bandit28-git@localhost:2220/home/bandit28-git/repo

cat /repo/README.md

: << 'END'
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx

END

# The password has been hidden, but maybe it was in plain text in an older version of the file

git log --all --full-history -- *
# displays all commits

git show 104db85a904e9691ff22aafe1a96124c88f75afa:README.md 

: << 'END'
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx

bandit28@bandit:/tmp/tmp.9PGlqbEaF2/repo$ git show 6c3c5e485cc531e5d52c321587ce1103833
ab7c3:README.md 
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: tQKvmcwNYcFS6vmPHIUSI3ShmsrQZK8S

END
