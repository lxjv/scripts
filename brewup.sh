#!/usr/bin/env bash

brew update
gum confirm "Upgrade $(brew outdated | wc -l) packages?" && brew upgrade
