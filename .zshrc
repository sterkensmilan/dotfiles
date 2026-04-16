# 1. Plugin loading (Keep this at the top)
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# 2. Environment Variables
export LANG=en_US.UTF-8
export TERM=xterm-256color
export MANPAGER='nvim +Man!'
export EDITOR='nvim'
export XDG_CONFIG_HOME="$HOME/.config"

# 3. Consolidated PATH updates
# Using a path array is more 'Zsh-native' and prevents duplicates
typeset -U path  # Ensures entries stay unique
path=(
  /usr/local/sbin
  /opt/homebrew/opt/coreutils/libexec/gnubin
  $HOME/work/scripts
  $HOME/.local/bin
  /opt/homebrew/opt/ansible@9/bin
  /opt/homebrew/opt/openjdk/bin
#  $HOME/.local/share/nvim/mason/packages/puppet-editor-services
  /opt/homebrew/opt/sqlite/bin
  $HOME/.pyenv/shims
  $HOME/Library/Python/3.11/bin
  $path
#  $HOME/.rvm/bin  # Kept at the end as requested
)
export PATH

# 4. Aliases
alias vim='nvim'
alias ll='ls -l'
alias grepr='grep -r'
alias docs='cd ~/work/Repos/computing-docs/'
alias mono='cd ~/work/Repos/puppet-monorepo/'
alias nas='cd //Volumes/home/' # Fixed the double slash
alias codem='ssh svintcodem01'
alias gu="cd ~/work/Repos/puppet-monorepo/ && git checkout master && git fetch upstream -v && git merge upstream/master && git push origin head"

# Dotfiles git setup: https://wiki.archlinux.org/title/Dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles config status.showUntrackedFiles no

# 5. Prompt Configuration
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%f'
precmd() { vcs_info }

# A slightly cleaner PS1 using your logic
# ✅/❌ indicator | user@host | last 2 dirs
PS1='%(?.%F{green}✅.%F{red}✘ %?)%f [%n@%m:%2~] $ '
RPROMPT='$vcs_info_msg_0_'

# 6. Interaction Settings
set -o emacs
# Add a handy search shortcut for history even in emacs mode
bindkey '^R' history-incremental-search-backward
