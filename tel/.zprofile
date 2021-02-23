#!/usr/bin/env zsh 
export PATH=$PATH:/data/data/com.termux/files/usr/bin/applets:~/.tel/bin:/data/data/com.termux/files/home/.local/bin:/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin
if [ -f ~/.tel/theme/.flag ] ; then
	nohup termux-wallpaper -f ~/.tel/theme/active/wallpaper/*.* > /dev/null 2>&1 &
	#disown -h %1
	rm -rf ~/.tel/theme/.flag
fi
. ~/.tel/scripts/readconfigs.sh
. ~/.tel/.tel_profile
~/.tel/scripts/.init
