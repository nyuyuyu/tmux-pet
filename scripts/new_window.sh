#!/usr/bin/env bash

# $1 ... tmux pane ID

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/variables.sh"

if ! which $pet_path > /dev/null 2>&1; then
    tmux display-message "$pet_path is not found."
    return
fi

tmux new-window tmux\ send-keys\ \-t\ $1\ \"\$\($pet_path\ search\)\"