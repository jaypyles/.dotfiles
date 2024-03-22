#!/bin/bash

export PATH="${PATH}:${HOME}/.local/bin/"

swww init

DIR=$HOME/walls
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[$RANDOM % ${#PICS[@]}]}

swww img ${DIR}/${RANDOMPICS}
wal -i ${DIR}/${RANDOMPICS} --cols16 lighten

echo "Successfully set a new wallpaper and generated colors from it."

waybar
