#!/bin/bash

# Pattern to capture with grep
pattern=$1

# File containing vim plugins
files=$2

# Create an array containing all with lines with pattern
lines=($(grep $pattern $files))

# Iterate over the lines and create another array with the github user/repo info
for i in ${lines[@]}; do
        filtered=($(echo $i | grep "'.*/.*'" | tr -d "'"))
            
        # Iterate again over each line and seperate the username of the repo name
        for i in ${filtered[@]}; do
            one=$(echo $i | cut -d '/' -f 1)
            two=$(echo $i | cut -d '/' -f 2)
            # echo the submodule info
            echo "[submodule \".vim/bundle/$two\"]"
            echo "  path = .vim/$two"
            echo "  url = http://github.com/$one/$two"
        done

done


#[submodule ".config/qtile"]
#	path = .config/qtile
#	url = http://github.com/fishfurbanter/qtile-config

