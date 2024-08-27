#
# ~/.bashrc
#

alias dc='/home/Aoto/dev/BIM/Dreamcatcher'
export PATH=$PATH:/home/Aoto/dev/scripts
export JAVA_HOME=/usr/local/android-studio/jbr

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
# Zuru soft lock integration
export PATH=$PATH:/home/Aoto/.zuru-soft-lock
# Unreal
export PATH=$PATH:/home/Aoto/.local/bin
export PATH=$PATH:/home/Aoto/dev/UnrealEngine

ue() {
	ue4cli=$HOME/.local/bin/ue4
	engine_path=$($ue4cli root)

  # cd to ue location
	if [[ "$1" == "engine" ]]; then
		cd $engine_path
  # combine clean and build in one command
	elif [[ "$1" == "rebuild" ]]; then
		$ue4cli clean
		$ue4cli build
		if [[ "$2" == "run" ]]; then
			$ue4cli run
		fi
  # build and optionally run while respecting build flags
	elif [[ "$1" == "build" ]]; then
		if [[ "${@: -1}" == "run" ]]; then
			length="$(($# - 2))" # Get length without last param because of 'run'
			$ue4cli build ${@:2:$length}
			$ue4cli run
		else
			shift 1
			$ue4cli build "$@"
		fi
  # Run project files generation, create a symlink for the compile database and fix-up the compile database
	elif [[ "$1" == "gen" ]]; then
		$ue4cli gen
		project=${PWD##*/}
		cat ".vscode/compileCommands_${project}.json" | python -c 'import json,sys
j = json.load(sys.stdin)
for o in j:
  file = o["file"]
  arg = o["arguments"][1]
  o["arguments"] = ["clang++ -std=c++20 -ferror-limit=0 -Wall -Wshadow-all" + file + " " + arg]
print(json.dumps(j, indent=2))' > compile_commands.json

		echo "Generating ctags database in current directory ..."
		ctags -R Source
		echo "Generation completed."


  # Pass through all other commands to ue4
	else
		$ue4cli "$@"
	fi
}
