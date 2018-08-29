#!/usr/bin/env bash

tmux list-windows | awk -F'\\(\d+ panes\\)' '{print$1}' | xargs -n1;
