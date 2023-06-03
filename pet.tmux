#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/variables.sh"

if [ -n "$pet_new_pane_key" ]; then
    tmux bind-key "$pet_new_pane_key" run-shell "$CURRENT_DIR/scripts/new_window.sh #{pane_id}"
fi
if [ -n "$pet_vsplit_pane_key" ]; then
    tmux bind-key "$pet_vsplit_pane_key" run-shell "$CURRENT_DIR/scripts/split_window.sh #{pane_id} v"
fi
if [ -n "$pet_hsplit_pane_key" ]; then
    tmux bind-key "$pet_hsplit_pane_key" run-shell "$CURRENT_DIR/scripts/split_window.sh #{pane_id} h"
fi