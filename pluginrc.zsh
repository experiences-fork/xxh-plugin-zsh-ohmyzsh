CURR_DIR="$(cd "$(dirname "$0")" && pwd)"
plugin_name='xxh-plugin-zsh-ohmyzsh'

export ZSH="$CURR_DIR/ohmyzsh"

if [[ -v ZSH_THEME ]]; then
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Found ZSH_THEME=$ZSH_THEME
  fi
else
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Set default ZSH_THEME=agnoster
  fi
  export ZSH_THEME="agnoster"
fi

if [[ -v plugins ]]; then
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Found plugins=$plugins
  fi
else
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Set default plugins
  fi
  export plugins=(git dash docker docker-compose gradle gitignore history kubectl man mvn npm node pip python sudo systemd ubuntu zsh-completions zsh-syntax-highlighting zsh-autosuggestions)

fi

export DISABLE_AUTO_UPDATE=true
source $CURR_DIR/ohmyzsh/oh-my-zsh.sh
autoload -U compinit && compinit

if [[ $(command -v exa) ]]; then
    alias ls='exa -g --group-directories-first --time-style=long-iso --icons'
fi

if [[ $(command -v eza) ]]; then
    unalias ls
    alias ls='eza -g --group-directories-first --time-style=long-iso --icons'
fi


