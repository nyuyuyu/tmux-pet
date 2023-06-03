# @pet-path
default_pet_path='pet'
pet_path=$(tmux show-option -gqv "@pet-path")
pet_path=${pet_path:-$default_pet_path}

# @pet-pane-size
default_pet_pane_size=''
pet_pane_size=$(tmux show-option -gqv "@pet-pane-size")
pet_pane_size=${pet_pane_size:-$default_pet_pane_size}

# @pet-pane-percentage
default_pet_pane_percentage=''
pet_pane_percentage=$(tmux show-option -gqv "@pet-pane-percentage")
pet_pane_percentage=${pet_pane_percentage:-$default_pet_pane_percentage}

# @pet-new-pane-key
default_pet_new_pane_key=''
pet_new_pane_key=$(tmux show-option -gqv "@pet-new-pane-key")
pet_new_pane_key=${pet_new_pane_key:-$default_pet_new_pane_key}

# @pet-vertical-split-pane-key
default_pet_vsplit_pane_key=''
pet_vsplit_pane_key=$(tmux show-option -gqv "@pet-vertical-split-pane-key")
pet_vsplit_pane_key=${pet_vsplit_pane_key:-$default_pet_vsplit_pane_key}

# @pet-horizontal-split-pane-key
default_pet_hsplit_pane_key=''
pet_hsplit_pane_key=$(tmux show-option -gqv "@pet-horizontal-split-pane-key")
pet_hsplit_pane_key=${pet_hsplit_pane_key:-$default_pet_hsplit_pane_key}