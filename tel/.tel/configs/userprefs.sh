#!/usr/bin/env bash

############## TEL User Preferences Configuration #########
#               Behavior and program preferences          #
#                   Restart to see changes             	  #
###########################################################

# Basic #
export NAME='User' # main/home window name
export LOCATION="London" # weather command and weather status script - [string]
export PATH_TO_SD=none # if not using an sdcard must be set to: none, else path must be absolute (no '~' or '$HOME' !) [none / pathtosdcard]

# Startup #
export STARTUP_ANIMATION_ENABLED=false  # show the animation on startup? ctrl + c skips [true/false]
export SSH_SERVER=false # this needs to be configured before being set to true, search for termux openssh. If you don't know what this is, leave as 'false'! It has BIG security implications and is only recommended for advanced users. [true/false]
export USE_TMUX=true # TEL starts up with tmux env (recommeneded to keep as true) [true/false]
export THEME_COLS=true # Terminal colors are supplied from tel-theme [true/false]

# Powersaving #
# see status.sh and notifications.sh for further options
export WEATHER_CHECK=60 # weather status script, check the weather forcast [minutes]
export POWER_SAVER_ACTIVE=false #prevents various processes using battery whilst tel is inactive [true/false]
export POWER_SAVER_TIMEOUT=57 #seconds of inactivity required to start power saver, ideally set to your screen timeout minus 3 seconds [seconds]
export POWER_SAVER_DISPLAY_COMMAND='' #examples: "uptime, neofetch --stdout"

# Preffered Apps # 
export BROWSER=links # set your web browser command: [w3m,links,elinks,lynx,brow.sh,emacs..]
export EDITOR=nano # set your file editor command: [nano,vim,neovim,sublime,emacs..]
export YT_PKG_NAME="org.schabi.newpipe" #/.MainActivity" # package name to use for youtube searches
export YT_APP_NAME="NewPipe" # app name to launch for youtube
