#!/usr/bin/env bash
# TEL test file
# used to test load speeds

CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"
echo -n "\e[4mTesting shell loadtime\e[0m" $'\r'

timezsh() { 
  shell=${1-$SHELL}
  for i in $(seq 1 10); do; time $shell -i -c exit; done
}


sleep 0.1

exit 0
