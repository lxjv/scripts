#!/usr/bin/env bash

# i purely wrote this cause python doesnt have an init command like rust
# (that i know of, python fans dont @ me)

mkdir ./src
touch {license,readme,contributing}.md
touch .gitignore
git init

LANG=$(gum choose "Python" "Javascript" "Rust")

if LANG =