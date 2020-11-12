#!/usr/bin/env bash
# Called to load all TEL configs/vars into the environment

# Version Info
#. ~/.tel/.version
#. ~/.tel/scripts/status_manager/.version

# Config files - source all user configs
source <(cat ~/.tel/configs/*.sh)
