#!/bin/bash

# Level 12 -> 13 Prompt

: << 'END'
The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work using mkdir. For example: mkdir /tmp/myname123. Then copy the datafile using cp, and rename it using mv (read the manpages!)
END

sshpass -p $(cat ../pwd/11_12) ssh bandit12@bandit.labs.overthewire.org -p 2220

# Locate tmp directory

find / -type d -name tmp 2> /dev/null

: << 'END'
/snap/core18/2679/tmp
/snap/core18/2679/var/tmp
/snap/core20/1822/tmp
/snap/core20/1822/var/tmp
/tmp
/home/drifter15/tmp
/var/tmp
END

cd /tmp
mkdir mccranky83

cd -
cp data.txt /tmp/mccranky83

cd /tmp/mccranky83

cat data.txt | xxd -r > hexdump
# 'r' for 'reverse'
# revert data.txt into a new file

file hexdump
# hexdump: gzip compressed data, was "data2.bin", last modified: Tue Feb 21 22:02:52 2023, max compression, from Unix, original size modulo 2^32 564

mv hexdump hexdump.gz
# rename file

gzip -dk hexdump.gz
# 'd' for 'decompress', 'k' for 'keep'


# Next we encounter a bzip2 archive
mv hexdump hexdump.bz2
bzip2 -dk hexdump.bz2

# Repeat the steps until we get a tar archive

tar -x -v -f hexdump
# 'x' for 'extract', 'v' for 'verbose', 'f' for 'file'

# Repeat

# Finally!
# The password is wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw

exit
