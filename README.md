# faker-push
[![Software License](https://img.shields.io/badge/licence-MIT-blue.svg)](LICENSE)
[![OS](https://img.shields.io/badge/MacOS-tested-brightgreen.svg)](https://github.com/apple)
[![OS](https://img.shields.io/badge/Linux-tested-brightgreen.svg)](https://github.com/torvalds/linux)
[![Version](https://img.shields.io/badge/version-1.0.0-yellow.svg)](https://github.com/maelsan/faker-push)

## WHAT DOES THIS SCRIPT?
He sends fake contributions on your Github account. Why would we cheat with this? Because green is beautiful.

[![Demo](https://img.shields.io/badge/MacOS-tested-brightgreen.svg)]


## ENVIRONMENT
As a shell script, he will work on UNIX, LINUX and MacOS (OSX).

## CUSTOMIZE
**You have to set some vars to define your repo's path.**

```
DIRGIT="$HOME/repos/"; 
DIRNAME="faker-push/"; 
BRANCH="master" 
```

`DIRGIT` and `DIRNAME` compose the path (so the full path in this example is `$HOME/repos/faker-push/`).

Don't forget the last slash `/`. `BRANCH` is set to `master` by default, so you don't have to change her unless you need.

Also, you can define how many push to do, at this line:

```
HOWMANY=$((RANDOM%50+1))
```

By default, I use `RANDOM` with a little operation for restrict to a regular push. If you don't understand, just don't touch.

## INSTALL
Clone this repository and move him to ***a suitable place*** (because you will not able to move him after, not without change configuration).

Now, to automatize this shellscript (for daily push, without manual launch each time), you have to use a specific method according to your OS. Follow these instructions.

### MacOS (OSX)

You cannot use a simple cron because Apple consider this method deprecated. So you have to use [**launchd**](http://launchd.info).

I made a script for you, so just run `launchd-osx` in your terminal:

```
$ ./launchd-osx
```

This script creates a entry in the deamon system and at each login (or boot), **faker-push** will be launched automatically in background without any action on your part. Launchd script defines interval between two executions of faker-push. If you need to push more, or less, you can edit the generated file at `~/Library/LaunchDaemons/com.fakerpush.app.plist` (by default, the **push interval is set to 6 hours**).

### UNIX (LINUX)

It's easier on UNIX/LINUX platforms to automatize this shellscript. You can use cron or put these lines:

```
FAKER="your/complete/path/faker-push.sh"
nohup "$FAKER" &
```

**nohup** allows to launch silently the script and in background. So you can add these lines to:

* `/etc/profile`
* `/etc/profile.d`
* `/home/$USER/.profile`

or you can follow these instructions for use the initscript:

* [http://stackoverflow.com/questions/12973777/how-to-run-a-shell-script-at-startup](http://stackoverflow.com/questions/12973777/how-to-run-a-shell-script-at-startup)
* [http://askubuntu.com/questions/228304/how-do-i-run-a-script-at-start-up](http://askubuntu.com/questions/228304/how-do-i-run-a-script-at-start-up)

As you are a UNIX/LINUX user, I let you choose the best solution for you. 

## Licence
The MIT License (MIT). Please see License File for more information.
