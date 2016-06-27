# faker-push
[![Software License](https://img.shields.io/badge/licence-MIT-blue.svg)](LICENSE)
[![OS](https://img.shields.io/badge/MacOS-tested-brightgreen.svg)](https://github.com/apple)
[![OS](https://img.shields.io/badge/Linux-tested-brightgreen.svg)](https://github.com/torvalds/linux)
[![Version](https://img.shields.io/badge/version-1.0.0-yellow.svg)](https://github.com/maelsan/faker-push)

## WHAT DOES THIS SCRIPT?
He sends fake contributions on your Github account. Why would we cheat with this? Because green is beautiful.

<img src="https://raw.githubusercontent.com/maelsan/faker-push/master/medias/green.png?token=AGyZ7Ob2A7OTZS1TMZLvCGZdxNS1TM4Cks5XeXVYwA%3D%3D" alt="green" width="700">

## ENVIRONMENT
As a shell script, he will work on UNIX, LINUX and MacOS (OSX).

## CUSTOMIZE
**You have to set some vars to define your repo's path.**

```
DIRGIT="$HOME/Repos/"; 
DIRNAME="faker-push/"; 
BRANCH="master" 
```

`DIRGIT` and `DIRNAME` compose the path (so the full path in this example is `$HOME/repos/faker-push/`).

Don't forget the last slash `/`. `BRANCH` is set to `master` by default, so you don't have to change her unless you need.

## INSTALL
First of all, during the installation process, don't use `sudo`, `su`, or anything else. faker-push need to acces to your user, and if you use a root user, he will not be able to work.

Clone this repository and move him to ***a suitable place*** (because you will not able to move him after, not without change configuration).

Now, to automatize this shellscript (for daily push, without manual launch each time), you have to use a specific method according to your OS. Follow these instructions.

### MacOS (OSX) <img src="https://raw.githubusercontent.com/maelsan/faker-push/master/medias/apple.png?token=AGyZ7NJIk_fRWFwQE5LFoJB4xFYzWf9lks5XeXY8wA%3D%3D" alt="apple" width="20">

I made a script for you, so just run `launchd-osx` in your terminal:

```
$ ./launchd-osx
```

This script use [**launchd**](http://launchd.info) and at each login (or boot), faker-push will be launched automatically in background without any action on your part. Launchd script defines interval between two executions of faker-push. If you need to push more, or less, you can edit the generated file at `~/Library/LaunchAgents/com.fakerpush.plist` (by default, the **push interval is set to 6 hours**).

### UNIX (LINUX) <img src="https://raw.githubusercontent.com/maelsan/faker-push/master/medias/linux.png?token=AGyZ7O1b9RXyJNkcFVvZ6e1rI8lqHrx6ks5XeXZ1wA%3D%3D" alt="linux" width="20">

It's easier on UNIX/LINUX platforms to automatize this shellscript. You can use cron or put these lines:

```
FAKER="your/complete/path/faker-push"
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

## IT DOESN'T WORK ! :rage3:

- You have made a mistake on your path repo.
- On OSX, you ran `launchd-osx` with sudo mode (and you must not).
- CHMOD or ownership on faker-push are incorrects.

NOTE: faker-push and launchd must be launched without sudo, otherwise, permission problems could happen...

## Licence <img src="https://raw.githubusercontent.com/maelsan/faker-push/master/medias/mit.png?token=AGyZ7CTwGwpYqemyz1xKR_0Uaf_Pwo7eks5XeXbFwA%3D%3D" alt="linux" width="20">
The MIT License (MIT). Please see License File for more information.
