# Start configuration added by Zim install {{{
#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
# }}} End configuration added by Zim install

export EDITOR="nvim"

# C#
export DOTNET_CLI_TELEMETRY_OUTPUT=1

# Directories
export ZDIR="$HOME/.z"
# Path
typeset -U PATH path
NODE_BIN="$HOME/.node_modules/bin"
export npm_config_prefix="$HOME/.node_modules"
EMACS_BIN="$HOME/.emacs.d/bin"
GO_BIN="$HOME/go/bin"
COMPOSER_BIN="$HOME/.config/composer/vendor/bin"
path=("$HOME/bin" "$NODE_BIN" "$COMPOSER_BIN" "$EMACS_BIN" "$GO_BIN" "$path[@]")
export PATH
