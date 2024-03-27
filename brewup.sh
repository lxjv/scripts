#!/usr/bin/env bash

brew update
gum confirm "Upgrade $(brew outdated | wc -l | tr -d ' ') packages?" && brew upgrade
