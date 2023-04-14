#!/bin/bash

# Level 17 -> 18 Prompt

: << 'END'

END

# Assuming we're still logged in as bandit17 on the remote server...
diff passwords.old passwords.new

# 42c42
#< f9wS9ZUDvZoo3PooHgYuuWdawDFvGld2
#---
#> hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg

# deleted line: f9wS9ZUDvZoo3PooHgYuuWdawDFvGld2
# added line: hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg

exit
# now we're bandit16

exit
# now we're on our local machine
