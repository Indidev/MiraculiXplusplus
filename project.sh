#!/bin/bash

IFS=";" read -a projects <<< "$AX_PROJECTS"

AX_PROJECT_SEARCH_DIR="$ArmarX_DIR/$1"

if [ -z $1 ]
then
	cd "$ArmarX_DIR"
else
	for i in "${projects[@]}"
	do
		AX_PROJECT_DIR=$ArmarX_DIR/$i
		AX_PROJECT_DIR_LC="${AX_PROJECT_DIR,,}"
		if [ "${AX_PROJECT_DIR_LC:0:${#AX_PROJECT_SEARCH_DIR}}" = ${AX_PROJECT_SEARCH_DIR,,} ] 
		then
			cd "$AX_PROJECT_DIR"
			break
		fi
	done
fi

unset IFS
unset projects
unset AX_PROJECT_SEARCH_DIR
unset AX_PROJECT_DIR
unset AX_PROJECT_DIR_LC
