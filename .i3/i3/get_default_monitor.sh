#!/usr/bin/bash

count=$(xrandr | grep " connected " | wc -l)

if [ $count -eq 2 ]; then
	echo $(xrandr | grep " connected " | awk '{ print$1 }' | awk '{i++}i==2')
else
	echo $(xrandr | grep " connected " | awk '{ print$1 }')
fi

