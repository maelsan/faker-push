#!/bin/sh

###
 # NOTE: Put your informations here (path + folder name)
 #     : If the folder is already created (or repo already cloned), nothing will be changed.
###
DIRGIT="$HOME/repos/"; # Path of your fake repo
DIRNAME="faker-push/"; # Name of your repo
BRANCH="master" # Branch name
MESSAGE="https://github.com/maelsan/faker-push"

FakerGo () {
	if [ -d "$DIRGIT$DIRNAME" ]; then
		if [ -d "$DIRGIT$DIRNAME".git ]; then
			quiet_git
			uuidgen > "$DIRGIT$DIRNAME".faker
			git add -f .faker >/dev/null
			git commit -m "$MESSAGE" >/dev/null
			git push origin "$BRANCH" >/dev/null
			FakerGo
		fi
	else
		noFolder
	fi
}

###
 # Folder not available? We create him.
###
noFolder () {
	cd "$DIRGIT" || exit
	mkdir faker 
	FakerGo
}

quiet_git() {
    stdout=$(".lock")
    stderr=$(".lock")

    if ! git "$@" </dev/null >$stdout 2>$stderr; then
        cat $stderr >&2
        rm -f $stdout $stderr
        exit 1
    fi

    rm -f $stdout $stderr
}

FakerGo # - Run script