#!/bin/bash

lang=$(setxkbmap -query | grep layout | sed 's/layout.* //g')


case $1 in 
	icon)
		echo "";;
	
	layout)
		if [[ $lang == "us" ]]
		then
			echo "us"
		fi
        ;;
esac 
