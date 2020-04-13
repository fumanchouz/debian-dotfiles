# Debian
alias 'apt'='sudo apt'
alias 'su'='sudo su'
alias 'ls'='ls -a --color'
alias 'clear'='clear && clear'

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

# Powerline
#source /usr/share/powerline/bindings/zsh/powerline.zsh

# zplug init
source /usr/share/zplug/init.zsh

# zplug from oh-my-zsh
zplug 'plugins/debian', from:oh-my-zsh
zplug 'lib/key-bindings.zsh', from:oh-my-zsh

# zplug plugins
zplug 'zsh-users/zsh-history-substring-search'
zplug '/usr/share/zsh-autosuggestions', from:local
zplug '/usr/share/zsh-syntax-highlighting', from:local, defer:2

# zplug theme
zplug 'themes/gentoo', from:oh-my-zsh, as:theme 

# zplug check packages
if ! zplug check; then
    zplug install
fi

# zplug source plugins and add commands to the PATH
zplug load
