username() {
  echo "%m"
}

directory() {
  echo $(_pink)"%2~%{$reset_color%}"
}

current_time() {
    echo "%*"
}

_error_color() {
  echo "%{%(?.$(_white).$(_red))%}"
}

_error_symbol() {
  echo "%{%(?.✔︎.✘)%}"
}

_green() {
  echo "%{$FG[010]%}"
}

_blue() {
  echo "%{$FG[039]%}"
}

_pink() {
  echo "%{$FG[183]%}"
}

_yellow() {
  echo "%F{yellow}"
}

_white() {
  echo "%F{white}"
}

_red() {
  echo "%F{red}"
}

_bold() {
  echo "%B"
}


ZSH_THEME_GIT_PROMPT_PREFIX=":git("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(_bold)$(_green)➜ $(username)%{$reset_color%}$(_bold):$(directory)%{$reset_color%}$(_bold)$(git_prompt_info)%{$reset_color%} $ '
RPROMPT=''