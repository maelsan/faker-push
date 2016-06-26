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
			echo "q" > "$DIRGIT$DIRNAME".faker
			git add -f *
			git commit -m "$MESSAGE"
			git push origin "$BRANCH"
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

FakerGo # - Run script