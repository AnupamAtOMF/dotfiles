# Environmental Variables

## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)" eval export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

## OMF Specific
export DISABLE_SPRING=true
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=true
export OMFPATH="$HOME/Development/omf"

## Path
#PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/jamf/bin"; export PATH;
typeset -U path
path=("${ASDF_DATA_DIR:-$HOME/.asdf}/shims" $path)
path=('/usr/local/jamf/bin' $path)
path=('/opt/homebrew/sbin' $path)
path=('/opt/homebrew/bin' $path)
path=("$HOME/.bin" $path)

## Man Path
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";

## Info Path
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

