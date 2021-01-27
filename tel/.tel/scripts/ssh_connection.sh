#!/data/data/com.termux/files/usr/bin/bash
# sourced when a user connects via secure shell to TEL
export TERM=xterm-256color # set generic term profile
termux-toast '[TEL]: User connected via SSH'
termux-wake-lock
alias logout='tel-wake-unlock && logout'
(am start --user 0 -n com.termux/com.termux.app.TermuxActivity > /dev/null 2>&1) # bring tel to foreground on ssh login
