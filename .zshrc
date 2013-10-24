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
plugins=(osx git rbenv brew heroku bundler bower node themes)

source $ZSH/oh-my-zsh.sh

# default path
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH"

# homebrew
export PATH="$HOME/Developer/sbin:$HOME/Developer/bin:$PATH"

# python packages
export PATH="$HOME/Developer/share/python:$PATH"

# android sdk
export PATH="$HOME/local/android-sdk/sdk/platform-tools:$HOME/local/android-sdk/sdk/tools:$PATH"

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# jsctags for node
export NODE_PATH=/Users/sam/Developer/lib/jsctags/:$NODE_PATH

# EC2 tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/Users/sam/Developer/Library/LinkedKegs/ec2-api-tools/jars"

# nvm
source ~/.nvm/nvm.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

case "$TERM" in
  xterm*) TERM=xterm-256color
esac

unsetopt auto_name_dirs

figlet -f relief -w 1200 `hostname -s`

export SSL_CERT_FILE=/Users/sam/Developer/opt/curl-ca-bundle/share/ca-bundle.crt
