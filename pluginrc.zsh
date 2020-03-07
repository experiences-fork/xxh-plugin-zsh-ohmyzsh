CURR_DIR="$(cd "$(dirname "$0")" && pwd)"

export ZSH="$CURR_DIR/build/ohmyzsh"
export ZSH_THEME="agnoster"         # TODO: read theme from env where zshrc will set value from arguments from xxh
export DISABLE_AUTO_UPDATE=true
source $CURR_DIR/build/ohmyzsh/oh-my-zsh.sh