# Shell variables
# Default TEL colors
wallpaper='/home/sealyj/Wallpapers/shaggymosstrees.jpg'

# Special
background='#1f1f1f'
foreground='#c0b18b'
cursor='#c0b18b'

# Colors
color0='#4a3637'
color1='#d17b49'
color2='#7b8748'
color3='#af865a'
color4='#535c5c'
color5='#775759'
color6='#6d715e'
color7='#c0b18b'
color8='#4a3637'
color9='#d17b49'
color10='#7b8748'
color11='#af865a'
color12='#535c5c'
color13='#775759'
color14='#6d715e'
color15='#c0b18b'

# FZF colors
export FZF_DEFAULT_OPTS="
    $FZF_DEFAULT_OPTS
    --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
    --color info:7,prompt:2,spinner:1,pointer:232,marker:1
"

# Fix LS_COLORS being unreadable.
export LS_COLORS="${LS_COLORS}:su=30;41:ow=30;42:st=30;44:"
