#!/data/data/com.termux/files/usr/bin/bash
tmux display-message "[TEL] Pasting..." &
tmux send-keys "$(termux-clipboard-get)"
