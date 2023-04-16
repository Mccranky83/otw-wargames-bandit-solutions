#!/bin/bash

# Level 23 -> 24 Prompt

: << 'END'
A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.

NOTE: This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!

NOTE 2: Keep in mind that your shell script is removed once executed, so you may want to keep a copy around…

END

sshpass -p $(cat ../pwd/22_23) ssh bandit23@bandit.labs.overthewire.org -p 2220


cd /etc/cron.d/; cat cronjob_bandit24
# @reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
# * * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null


cat /usr/bin/cronjob_bandit24.sh
# It's a shell script...


cd /var/spool/bandit24/foo; ls -ld .
# drwxrwx-wx 36 root bandit24 4096 Apr 16 12:22 .

# We see that the script runs all scripts within /var/spool/bandit24 as bandit24

: << 'END'
#!/bin/bash
cat /etc/bandit_pass/bandit24 > bandit24pass 
END

chmod 777 script.sh


# Wait a while for the cronjob to run (~ 1 min or so), keep checking if bandit24pass is generated yet
cat bandit24pass

