#!/usr/bin/env bash

FORTUNE_FOLDER="~/.local/fortunes"

jq .[url] "$FORTUNE_FOLDER/$1.json"


