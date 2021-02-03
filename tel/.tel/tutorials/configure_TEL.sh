#!/usr/bin/env bash
clear ; cowsay "Okay, Config tutorial!"
read user_response
clear ; cowsay "I will type and interact with the terminal the same way you can"
read user_response
clear ; cowsay "Don't touch the screen until the tutorial has finished!"
read user_response
clear ; cowsay "First I will split the window, so I can continue to explain.."
read user_response
tmux split-pane -dv 
clear ; cowsay "Now I type the command..."
read user_response
tel-typewriter -i tel-edit -t Tutorial.bottom
clear ; cowsay "I will hit enter to run tel-edit interatively"
read user_response
tel-typewriter -k Enter -t Tutorial.bottom
clear ; cowsay "We are looking for configs, so i will type that in now"
read user_response
tel-typewriter -i 'tel configs' -t Tutorial.bottom
clear ; cowsay "As soon as the file you're looking for has been highlighted.."
read user_response
clear ; cowsay "You can hit enter again to launch the editor! or cancel with Ctrl+c"
read user_response
clear ; cowsay "I will cancel with Ctrl+c for now"
read user_response
tel-typewriter -k C-c -t Tutorial.bottom
read user_response
tel-typewriter -k M-a -t Tutorial.bottom
clear ; cowsay "Thus concludes our tutorial!"
read user_response
tel-typewriter -i exit -k Enter -t Tutorial.bottom
