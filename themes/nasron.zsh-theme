# terminal coloring
export CLICOLOR=1
export LSCOLORS=dxFxCxDxBxegedabagacad

local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

local terraform='%{$reset_color%}%{$fg[red]%}tf:%{$reset_color%}%{$fg[yellow]%}$(tfenv version-name)'

local pyenv='%{$reset_color%}%{$fg[red]%}py:%{$reset_color%}%{$fg[yellow]%}$(pyenv version)'

#$(cat ~/.pyenv/version)'

local aws='%{$reset_color%}%{$fg[red]%}aws:%{$reset_color%}%{$fg[yellow]%}${AWS_PROFILE}'

PROMPT="%{$fg[green]%}%n ${aws} ${pyenv} ${terraform} %{$reset_color%}%{$fg[blue]%}%~ %{$reset_color%}${git_branch}
%{$fg[green]%}$ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}on "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}
