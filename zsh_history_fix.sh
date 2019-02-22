#!/usr/bin/env sh
# Adan Moran-MacDonald, 24 April 2018 
# Modified from George Ornbo (shapeshed) http://shapeshed.com
# License - http://unlicense.org
#
# Fixes a corrupt .zsh_history file
set HERE=$(pwd)
cd ~
mv .zsh_history .zsh_history_bad
strings .zsh_history_bad > .zsh_history
fc -R .zsh_history
rm .zsh_history_bad
cd $HERE
