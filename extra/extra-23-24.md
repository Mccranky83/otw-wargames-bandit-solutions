## _Let's take a closer look at the script we came across in lv.23!_

```bash
for i in \* ./\*;
```

> `*` - This is a wildcard character that matches all files and directories in the current directory that do not start with a dot (`.`). It will match any file or directory name that contains one or more characters.

> `.*` - This is a wildcard character that matches all files and directories in the current directory that start with a dot (`.`). It will match any file or directory name that begins with a dot (`.`), including hidden files and directories.

---

```bash
"$i" != "." -a "$i" != ".."
```

> `-a` for 'and'

---

```bash
owner="$(stat --format "%U" ./$i)"
```

> `stat` - This is the name of the utility that is being used to display information about files and directories.

> `--format "%U"` - This option specifies the format in which to display the output of the `stat` command. In this case, the `%U` format specifier is used to display the username of the owner of the file or directory.

> `./$i` - This is the path to the file or directory that you want to display information about. The `$i` variable is used to specify the name of the file or directory that is currently being processed by the loop.

**_Showcase_**

```bash
for i in $(ls); do echo $(stat --format "%U %N" ./$i); done
```

### _Please note that this syntax won't work on a local machine running OS X, as we are working on a remote Linux server. However, we do have something else up our sleeves._

```bash
find . -maxdepth 1 -exec stat -f "%Su %N" {} \;
```

**_Note: This syntax is also available in Linux!_**

> `-maxdepth 1` option specifies that `find` should only look in the current directory and not recurse into subdirectories.

> `-exec` option enables you to execute a command on each file or directory that matches the pattern. **_Don't forget to terminate the `exec` process by adding a semicolon (`;`) at the end of the command! Also, backslash (`\`) before the semicolon to escape the semicolon character._**

> `%Su` is a format specifier that is used to display the username of the owner of the file or directory.

> `%N` is a format specifier that is used to display the file or directory name.

> `{}` is a placeholder that represents the current file or directory being processed by find. In the off-chance where you **_omitted_** the `{}` placeholder, the `find` command will not know where to execute the specified command, which happens to be the `stat` command in this case.

---

```bash
timeout -s 9 60 ./$i
```

The command timeout -s 9 60 ./$i runs the script or binary file specified by the variable $i, and terminates the process after 60 seconds of execution or if it receives a SIGKILL signal (signal number 9).

> `timeout` is a command that is used to run a command and limit its execution time.

> `-s 9` is an option that specifies the signal number to send to the process if the timeout expires. In this case, the signal number is `9`, which corresponds to the `SIGKILL` signal.

> `60` is the duration of the timeout **_in seconds_**. This means that the command specified by `$i` will be allowed to run for a maximum of 60 seconds.

> `./$i` is the name of the command that will be executed.

---

> The macOS's equivalent is:

```bash
gtimeout 60s <command-to-be-timed-out>
```

> But first run `brew install coreutils` to install core dependencies before moving on!

#### _Note_

It is common practice to enclose the variables in double quotes. This is important because if say, `$i` contains spaces, errors could occur. By enclosing `$i` in quotes, we ensure that its contents are treated as a single argument, even if it contains spaces.