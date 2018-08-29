#!/usr/bin/env bash

command-palette "git checkout" "$(git branch | tr -d \* | xargs -n1)";
