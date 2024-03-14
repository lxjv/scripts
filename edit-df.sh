#!/usr/bin/env bash

FILE=$(fzf $HOME/dotfiles/)
$EDITOR $FILE
