#!/bin/bash

# Level 31 -> 32 Prompt

: << 'END'
There is a git repository at ssh://bandit31-git@localhost/home/bandit31-git/repo. The password for the user bandit31-git is the same as for the user bandit31.

Clone the repository and find the password for the next level.
END


git add key.txt -f
git commit -m "added key"
git push origin master

: << 'END'
remote: ### Attempting to validate files... ####
remote
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
remote
remote: Well done! Here is the password for the next level
remote: 5c1d06a02163d3224e06f00ca0bbfe1c2768ce00
remote
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
END
