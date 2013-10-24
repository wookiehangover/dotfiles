if [ "$(whoami)" = "root" ]; then CARETCOLOR="red"; else CARETCOLOR="magenta"; fi

function hg_prompt_info {
    hg prompt --angle-brackets "\
< [%{$fg[magenta]%}<branch>%{$reset_color%}>] \
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

local return_code="%(?..%{$fg_bold[red]%}:( %?%{$reset_color%})"

PROMPT='
%{$fg[cyan]%}%n%{$reset_color%}%{$fg[yellow]%}@%{$reset_color%}%{$fg[blue]%}%m%{$reset_color%}: %{${fg[green]}%}%~%{$reset_color%}$(git_prompt_info)$(hg_prompt_info)
%{${fg[$CARETCOLOR]}%}∴ %{${reset_color}%}'

RPROMPT='%{$fg[magenta]%} %W - %*%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}±%{$reset_color%} [%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}]%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$reset_color%}]%{$fg[cyan]%} ?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}]%{$fg[red]%} ♥"
