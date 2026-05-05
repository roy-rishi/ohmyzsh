# data
hostname="%m"
directory="%4~"

# colors
_mint=$'%F{#9AD1A2}'
_pink="%{$FG[183]%}"
_red=$"%F{red}"

# formatting
_bold="%B"
new_line=$'\n'

# hook
preexec() {
  echo -ne '\e[22m'  # stop boldface
}

# git
ZSH_THEME_GIT_PROMPT_PREFIX=":("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# prompts
PROMPT='${_bold}${_mint}${hostname}%f:${_pink}${directory}%f$(git_prompt_info)${new_line}%f$ '
RPROMPT=''
