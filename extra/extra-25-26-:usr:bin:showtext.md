## _Let's take a closer look at the script we came across in lv.25!_

```bash
#!/bin/sh

export TERM=linux

exec more ~/text.txt
exit 0
```

```bash
export TERM=linux
```

> `export` sets `$TERM` variable to 'linux'

> `more` is a command-line pager that allows us to view the contents of a file in a paginated way

### _Note_

> When we open a terminal session, the shell is the first program that starts running, in which case if we reduce the terminal window size so that the `more` command in the script cannot display the entire contents of the `'~/text.txt'` file, then the script will be paused until we press the space bar or another key to scroll through the content.

> At this point, we can interrupt the script by pressing `Ctrl+C` to stop the `more` command and gain access to the shell prompt. From there, we can modify the script or take any other necessary action.

> Overall, this is a useful technique for temporarily preventing a script from running all the way through on startup and giving us time to modify it if necessary.
