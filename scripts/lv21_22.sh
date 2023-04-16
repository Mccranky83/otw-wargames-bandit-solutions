#!/bin/bash

# Level 21 -> 22 Prompt

: << 'END'
A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.

END

sshpass -p $(cat ../pwd/20_21) ssh bandit21@bandit.labs.overthewire.org -p 2220

cd /etc/cron.d/


cat cronjob_bandit22

# @reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
# * * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null

cat /usr/bin/cronjob_bandit22.sh


# #!/bin/bash
# chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
# cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
# WdDozAdTM2z9DiFEQ2mGlwngMfj4EZff
