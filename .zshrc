# Debian
alias 'apt'='sudo apt'
alias 'ls'='ls -a --color'

# Options
setopt NO_NOMATCH
setopt HIST_IGNORE_DUPS
setopt completealiases

zstyle ':completion:*' menu select
autoload -U compinit && compinit

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Zplug init
source ~/.zplug/init.zsh

# Settings from oh-my-zsh
zplug 'lib/key-bindings.zsh', from:oh-my-zsh

# Plugins
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2

# Theme
zplug 'themes/gentoo', from:oh-my-zsh, as:theme 

# Check packages
if ! zplug check; then
    zplug install
fi

# Source plugins and add commands to the PATH
zplug load
