#!/usr/bin/env bash
# called to start / stop status manager (backend)
running=$(pgrep -f status_manager.py)
if [ -z "$running" ] ; then
	nohup ~/.tel/scripts/status_manager/status_manager.py > /dev/null 2>&1 & 
else
	kill "$(pgrep -f 'status_manager.py')"
	pkill -f 'termux-api' 
	tel-delete-status -1
fi
