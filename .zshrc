# install zsh-autocomplete to use this
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

TERM=xterm-256color

# aliases
alias gu="cd ~/work/repos/puppet-monorepo/ && git checkout master && git fetch upstream -v && git merge upstream/master && git push origin head"
alias vim=nvim

export LANG=en_US.UTF-8


# add paths
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/milansterkens/work/scripts:$PATH"
export PATH="/opt/homebrew/opt/ansible@9/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/Users/milansterkens/.local/share/nvim/mason/packages/puppet-editor-services:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

# git integration in shell prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# use vim to view manpages
export MANPAGER='nvim +Man!'

# set vim as default editor for lf
export EDITOR='nvim'

# PS1 zsh prompt
export PS1="(%(?.%F{green}√.%F{red}?%?)%f)[%n@%m:%2~ ]$ "

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# enable vi mode
#bindkey -v
