if [ $(tmux list-panes | wc -l) -gt 1 ] ; then
	tmux kill-pane
fi
