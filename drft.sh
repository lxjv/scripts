#!/usr/bin/env bash

STANDIN=$(mktemp /tmp/seereport.XXXXXXXXXXXX) || exit 1
cat > $STANDIN

/usr/bin/osascript > /dev/null <<ASCPT
    set stdinText to do shell script "cat $STANDIN"
    tell application "Drafts"
        make new draft with properties {content:stdinText}
    end tell
ASCPT

trap 'rm -f $STANDIN' EXIT


