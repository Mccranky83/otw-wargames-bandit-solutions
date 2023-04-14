#!/bin/bash

# Level 20 -> 21 Prompt

: << 'END'
There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

NOTE: Try connecting to your own network daemon to see if it works as you think
END

sshpass -p $(cat ../pwd/19_20) ssh bandit20@bandit.labs.overthewire.org -p 2220

nc -l -p 2222 -v
# 'l' for 'listen', 'p' for 'port', 'v' for 'verbose'
# start a netcat session that listens for incoming connections on port 2222 of localhost

./suconnect 2222

# then pass in bandit20's password under netcat session

VxCazJaVykI6W36BkBU0mJTCM8rR95XT

# this should allow ./suconnect to read the password and confirm if it's correct or not. If it is, it should return the password to bandit21.

# Read: VxCazJaVykI6W36BkBU0mJTCM8rR95XT
# Password matches, sending next password

NvEJF7oVjkddltPSrdKEFOllh9V1IBcq





# We can actually automate this by starting a tmux session (a terminal multiplexer that allows multiple terminal sessions in a single window) and passing bandit20's password to netcat session in advance

tmux # create a new tmux session
# then in that new session we run:
printf "VxCazJaVykI6W36BkBU0mJTCM8rR95XT" | nc -l -p 2222 -v

# after that we connect to our localhost's port 2222 using ./suconnect
# a new password should immediately be sent to netcat


# Voila!

# exit tmux session with '^D'
