#!/bin/env bash

# HELPFUL FUNC
greet_and_prepare() {
	echo "Hello! This script will help you install wiki of 07-mod project."
	echo "To refuse installation, type Control-C."
	read -n 1 -s -r -p "Press any key to continue... "
	echo ""
	read -p "Installation PATH: [$HOME]" WIKI_PATH
	read -p "Wiki name: [wiki]" ENV_NAME
	read -p "Would you like to install wiki in virual env? [Y/n] " ENV
	if [[ "$ENV" != "n" ]]; then
		read -p "Python3 virual env PATH: [$HOME]" ENV_PATH
		read -p "Virtual env NAME: [mkdocs-venv]" ENV_NAME
	fi
}

default_vars() {
	WIKI_PATH=${WIKI_PATH:-"$HOME"}
	WIKI_NAME=${WIKI_NAME:-"wiki"}
	ENV_PATH=${ENV_PATH:-"$HOME"}
	ENV_NAME=${ENV_NAME:-"mkdocs-venv"}
	LAUNCHER=${LAUNCHER:-"wiki-07mod.sh"}
	ENV=${ENV:-"Y"}

}

look_for_deps() {
	lookfor() {
		if type "$1" 1>/dev/null; then
			echo "$1 is found"
		else
			echo "Please install $1"
			exit
		fi
	}
	lookfor git
	lookfor python3
	lookfor pip3

}
install() {
	if [[ "$ENV" != "n" ]]; then
		python3 -m venv "$ENV_PATH/$ENV_NAME"
		. "$ENV_PATH/$ENV_NAME/bin/activate"
	fi
	pip3 install mkdocs mkdocs-material mkdocs-minify-plugin pymdown-extensions
	git clone https://github.com/07th-mod/wiki "$WIKI_PATH/$WIKI_NAME"
}
end() {
	printf "\n\n\n"
	echo "$LAUNCHER will ba added to HOME folder. Execute this file to begin work with wiki"
	if [[ "$ENV" != "n" ]]; then
		cat <<EOF >>"$HOME/$LAUNCHER"
#/bin/env bash
. $ENV_PATH/$ENV_NAME/bin/activate
cd $WIKI_PATH/$WIKI_NAME
mkdocs serve -f mkdocs.yml
EOF
	else
		cat <<EOF >>"$HOME/$LAUNCHER"
#/bin/env bash
cd $WIKI_PATH/$WIKI_NAME
mkdocs serve -f mkdocs.yml
EOF
	fi
	chmod u+x "$HOME/$LAUNCHER"
}

# ENTRY POINT
main() {
	greet_and_prepare
	look_for_deps
	default_vars
	install
	end
}

main
