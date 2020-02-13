#!/bin/bash


function sync() {
    rsync -avh config/ ~/.config
    rsync -avh home/ ~
}


if [ $1 == '--sync' -o $1 == '-s'  ]; then
    echo "Start ..."
    sync
else
    echo "Pleas Input your choose"
fi

unset sync
