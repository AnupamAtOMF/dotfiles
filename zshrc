# Aliases

if [[ -r ~/.zsh_aliases ]]; then
	source ~/.zsh_aliases
fi

# CD Paths

typeset -U cdpath
cdpath=( "$HOME/Development/omfclients" $cdpath )
cdpath=( "$HOME/Development/springleaf" $cdpath )

# Auto Complete
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

# Prompt
## Getting Version Control System Info
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

## Setting Prompt
zstyle ':vcs_info:git:*' formats '%b'
PROMPT='🏦 %F{cyan}%n%f %F{magenta}%3~%f %F{green}${vcs_info_msg_0_}%f %F{yellow}%#%f '

