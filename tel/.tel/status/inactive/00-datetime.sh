#!/usr/bin/env bash
icon=""
time=$(printf '%(%l:%M %p - %a %d %b)T\n' "-1")
#time=$(date '+%H:%M - %A %d %B' )
echo "${icon} ${time}"
