#!/usr/bin/env bash

command-palette select-window-action.sh "$(select-window-list.sh)";

# You could have this bound in your ~/.tmux.conf as:
# bind P new-window -n 'select-session' 'command-palette ./select-window-action.sh "$(./select-window-list.sh)"'
# This assumes that these files are in your path.