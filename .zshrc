# Load ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions and ~/.extra
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="wo0kie"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx rails3 git gem ruby github brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/Users/sam/Developer/sbin:/Users/sam/Developer/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/sam/local/node/bin:$PATH"
export PATH="/Users/sam/Developer/share/python:/Users/sam/dev/c2/c2-server/bin:$PATH"

unsetopt auto_name_dirs

figlet -f relief -w 1200 `hostname -s`

# nvm
source $HOME/.nvm/nvm.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

case "$TERM" in
  xterm*) TERM=xterm-256color
esac
