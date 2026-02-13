# Environmental Variables

## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)" eval export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

## NodeJS
#export NODE_OPTIONS="--use-system-ca" # For Nodejs v23 or above
### This pem certificate was created by concatenating all the
### certificates that start with corp-fin-rsa-* from the keychain
export NODE_EXTRA_CA_CERTS="$HOME/.certs/certs.pem"

## OMF Specific
export DISABLE_SPRING=true
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=true
export OMFPATH="$HOME/Development/omf"

## Path
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

