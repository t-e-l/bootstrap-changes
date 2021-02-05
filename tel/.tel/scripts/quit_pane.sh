if [ $(tmux list-panes | wc -l) -gt 1 ] ; then
	tmux display-message "[TEL] Quit pane..."
	tmux kill-pane
else
	tmux display-message "[TEL] use command 'exit' to exit from tmux env"
fi
