#!/bin/bash

# More advanced: check all CLI args if there are packages for them
#		 If so, then group them together in apt
# Even more:	 have some indicator for if a script is a snap, if so
#		 group those too
# TODO:		 add an alt argument (ls) that lists all items in
#		 install folder
_install () {
	if test -f "$SCRIPTS/install/$1.sh"; then
		$SCRIPTS/install/$1.sh
	else
		sudo apt install $1
	fi
}

_install $1

