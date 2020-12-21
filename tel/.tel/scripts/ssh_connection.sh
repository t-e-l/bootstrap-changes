#!/usr/bin/env bash
# sourced when a user connects via secure shell to TEL
if [ ! -z "$SSH_CONNECTION" ] ; then # if user is connected via ssh
	export TERM=xterm-256color # set generic term profile
	termux-toast '[TEL]: User connected via SSH'
	termux-wake-lock
	alias logout='tel-wake-unlock && logout'
	(am start --user 0 -n com.termux/com.termux.app.TermuxActivity > /dev/null 2>&1) # bring tel to foreground on ssh login
fi
