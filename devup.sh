#!/usr/bin/env bash

# i purely wrote this cause python doesnt have an init command like rust
# (that i know of, python fans dont @ me)

mkdir ./src
touch {LICENSE,README,CONTRIBUTING}.md .gitignore justfile
git init

LANG=$(gum choose "Python" "JS/TS" "Rust")

if [[ $LANG == "Python" ]]; then
	touch src/main.py
elif [[ $LANG == "JS/TS" ]]; then
	npm init -y
elif [[ $LANG == "Rust" ]]; then 
	cargo init .
else
	echo "broke lmao"
fi
