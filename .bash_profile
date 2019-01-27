source ~/.scripts/git-prompt.sh
source ~/.bash_aliases

# adds vi keybindings to bash terminal
set -o vi

MAGENTA="\[\033[0;35m\]"
LIGHT_GRAY="\[\033[0;37m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
VIOLET="\[\033[1;35m\]"

function color_my_prompt {
  local __user_and_host="$BLUE\u"
  local __cur_location="$VIOLET\w"
  local __git_branch_color="$GREEN"
  local __prompt_tail="$MAGENTA$"
  local __user_input_color="$LIGHT_GRAY"
  local __git_branch="$GREEN"'$(__git_ps1)'

  PS1="$__user_and_host $__cur_location$__git_branch $__prompt_tail$__user_input_color "
}

# configure PROMPT_COMMAND -- executed each time before PS1
export PROMPT_COMMAND=color_my_prompt

# if .git-prompt.sh exists, set options and execute it
if [ -e ~/.scripts/git-prompt.sh ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_HIDE_IF_PWD_IGNORED=true
  GIT_PS1_SHOWCOLORHINTS=true
  . ~/.scripts/git-prompt.sh
fi
