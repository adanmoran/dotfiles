# This tmux statusbar config was created by tmuxline.vim
# on Sun, 24 Jan 2016

set -g status-bg "colour18"
set -g message-command-fg "colour7"
set -g status-justify "left"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour4"
set -g message-bg "colour19"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour7"
set -g message-command-bg "colour19"
set -g status-attr "none"
# set -g status-utf8 "on"
set -g pane-border-fg "colour19"
set -g status-left-attr "none"
setw -g window-status-fg "colour7"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour18"
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg "colour4"
setw -g window-status-separator ""
setw -g window-status-bg "colour18"
set -g status-left "#[fg=colour18,bg=colour4,bold] #S #[fg=colour4,bg=colour18,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=colour19,bg=colour18,nobold,nounderscore,noitalics]#[fg=colour7,bg=colour19] %Y-%m-%d  %H:%M #[fg=colour4,bg=colour19,nobold,nounderscore,noitalics]#[fg=colour18,bg=colour4] #h "
setw -g window-status-format "#[fg=colour7,bg=colour18] #I #[fg=colour7,bg=colour18] #W "
setw -g window-status-current-format "#[fg=colour18,bg=colour19,nobold,nounderscore,noitalics]#[fg=colour7,bg=colour19] #I #[fg=colour7,bg=colour19] #W #[fg=colour19,bg=colour18,nobold,nounderscore,noitalics]"
