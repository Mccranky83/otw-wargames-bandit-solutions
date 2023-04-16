#!/bin/zsh

# Level 9 -> 10 Prompt

: << 'END'
The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.
END

sshpass -p $(cat ../pwd/8_9) ssh bandit9@bandit.labs.overthewire.org -p 2220

strings data.txt | grep '^=\+'
# Actually on second thought, '^=\{2,\}' would be better than '^=\+'...

: << 'END'
=XeOh
=vb`
=I6a
========== password
========== is
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
END

# 'strings' filters random gibberish from human-readable strings

# We use regexp in our search
# '^' character represents the start of a line
# '\+' indicates that the regular expression should match one or more occurrences of the previous atom or regexp.

# For more information, visit https://www.gnu.org/software/findutils/manual/html_node/find_html/grep-regular-expression-syntax.html

exit

