#!/usr/bin/env bash
# TEL Startup file
# these commands are ran only once when a session starts
# this file will be replaced with each update so modifications are not recommended here
source tel-helpers
log "Loading Things"
#echo -n "\e[4mLoading Things\e[0m" $'\r'
sleep 0.1 # sleeps so line updates are actually visible to user
#source ~/.tel/scripts/readconfigs.sh && echo -ne "all configs sourced ${CHECK_MARK}                " $'\r'

# Handle motd hints system if user changes config option
if  [ $MOTD_HINTS == "true" ] ; then # backup user motd and restore if hints disabled
	[[ ! -f ~/../usr/etc/.motd.bak ]] && cp -f ~/../usr/etc/motd ~/../usr/etc/.motd.bak && log "Backed up and enabled motd hints at startup ${CHECK_MARK}" && sleep 1
	cp -f ~/../usr/etc/motd_hints ~/../usr/etc/motd && ~/.tel/scripts/hints.sh
else
	[[ -f ~/../usr/etc/.motd.bak ]] && mv -f ~/../usr/etc/.motd.bak ~/../usr/etc/motd && log "Restored user motd ${CHECK_MARK}" && sleep 1
fi

if [ $SSH_SERVER == "true" ] ; then
	warn "launching ssh server  "
	sleep 0.2
	sshd
	warn "launched ssh server ${CHECK_MARK}"
	sleep 2.2
fi

if [ "$NOTIFICATIONS_ENABLED" == "true" ] ; then
	log "launching notification daemon"
	nohup ~/.tel/scripts/get_notifications.py > /dev/null 2>&1 &
	log "launched notification daemon ${CHECK_MARK}"
fi

if [ "$STARTUP_ANIMATION_ENABLED" == "true" ] ; then
	log 'launching animation'
	if [ $USE_TMUX == "true" ] ; then
		tmux new-window -n 'ctrl+c = skip' 'python ~/.tel/scripts/animation.py' 
	else
		python ~/.tel/scripts/animation.py
	fi
	log "launched python animation ${CHECK_MARK}"
fi

if [ "$STATUS_WINDOW_ENABLED" == "true" ] ; then
	running=$(pgrep -f status_manager.py)
	if [ -z "$running" ] ; then
		log 'launching status manager'
		nohup ~/.tel/scripts/status_manager/toggle_ui.sh > /dev/null 2>&1 &
		log "launched status manager ${CHECK_MARK}"
	fi
fi

log "Ready!      ${CHECK_MARK}"
sleep 0.1
exit 0
