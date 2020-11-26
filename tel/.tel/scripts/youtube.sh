#!/usr/bin/env bash
#script for starting / searching youtube with one alias
if [ "$#" == 0 ] ; then
	tel-app youtube > /dev/null 2>&1 || tel-app newpipe > /dev/null 2>&1 
else
	search_term=$@
	tel-search -yt "$search_term"
fi
