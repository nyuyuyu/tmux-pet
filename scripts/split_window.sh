#!/usr/bin/env bash

# $1 ... tmux pane ID
# $2 ... split type(v or h)

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/variables.sh"

if ! which $pet_path > /dev/null 2>&1; then
    tmux display-message "$pet_path is not found."
    return
fi

local options
case "$2" in
    'v') options='-v';;
    'h') options='-h';;
esac

if [ -n "$pet_pane_percentage" ]; then
    options="$options -p $pet_pane_percentage"
elif [ -n "$pet_pane_size" ]; then
    options="$options -l $pet_pane_size"
fi

tmux split-window $options tmux\ send-keys\ \-t\ $1\ \"\$\($pet_path\ search\)\"