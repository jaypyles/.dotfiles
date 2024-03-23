#!/bin/bash

export PATH="${PATH}:${HOME}/.local/bin/"

swww init

DIR=$HOME/walls
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[$RANDOM % ${#PICS[@]}]}

swww img ${DIR}/${RANDOMPICS}
wal -i ${DIR}/${RANDOMPICS} --cols16 lighten

echo "Successfully set a new wallpaper and generated colors from it."

ps axf | grep waybar | grep -v grep | awk '{print "kill -9 " $1}' | sh # kill waybar
waybar &
./env/bin/python combine_yamls.py
