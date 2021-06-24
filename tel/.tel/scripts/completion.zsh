# completion.zsh

_tel-theme_complete() {
  local word completions
  word="$1"
  completions="$(tel-theme --complt "${word}")"
  reply=( "${(ps:\n:)completions}" )
}

compctl -f -K _tel-theme_complete tel-theme
