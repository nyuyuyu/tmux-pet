# tmux-pet

This plugin calls [pet](https://github.com/knqyf263/pet) via tmux.


## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'nyuyuyu/tmux-pet'

Hit `prefix + I` to fetch the plugin and source it.

Add `@pet-new-pane-key`, `@pet-vertical-split-pane-key` and/or `@pet-horizontal-split-pane-key` in `.tmux.conf`:

    set -g @pet-new-pane-key 'C-f'

Finally, reload tmux:

    // type this in terminal
    $ tmux source-file ~/.tmux.conf


## Manual Installation

Clone the repo:

    $ git clone https://github.com/nyuyuyu/tmux-pet ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/pet.tmux

Add `@pet-new-pane-key`, `@pet-vertical-split-pane-key` and/or `@pet-horizontal-split-pane-key` in `.tmux.conf`:

    set -g @pet-new-pane-key 'C-f'

Finally, reload tmux:

    // type this in terminal
    $ tmux source-file ~/.tmux.conf


## Plugin options

| Options                          | Description                                                               |
|:---------------------------------|:--------------------------------------------------------------------------|
| `@pet-path`                      | Path to `pet` binary.                                                     |
| `@pet-pane-size`                 | Size of pane to display `pet` command. (e.g. `10`)                        |
| `@pet-pane-percentage`           | Percentage of pane to display `pet` command. (e.g. `50`)                  |
| `@pet-new-pane-key`              | Key binding for opening new full size pane to display `pet` command.      |
| `@pet-vertical-split-pane-key`   | Key binding for opening vertically split pane to display `pet` command.   |
| `@pet-horizontal-split-pane-key` | Key binding for opening horizontally split pane to display `pet` command. |
