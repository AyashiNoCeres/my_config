# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Custom themes may be added to ~/.oh-my-zsh/custom/
ZSH_THEME="kali"

# Change this value to set how frequently ZSH updates
export UPDATE_ZSH_DAYS=3

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins+=(zsh-z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Fix chruby - https://github.com/postmodern/chruby/issues/191
#precmd_functions+=("chruby_auto")

# autocorrect is more annoying than helpful
unsetopt correct_all

# preferred editor
export EDITOR='vim'
export BUNDLER_EDITOR='vim'

### homebrew
export PATH="/usr/local/sbin:$PATH"
#coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
# gopath
#export PATH=$PATH:/usr/local/opt/go/libexec/bin
# zsh-completions
#fpath=(/usr/local/share/zsh-completions $fpath)
#fpath=(~/.zsh/completions $fpath)

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Bundler > 1.5.0
export BUNDLE_JOBS=$(sysctl -n hw.ncpu)

# aliases
. ~/.zsh/aliases

bindkey -v

# Better searching in command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# Easier, more vim-like editor opening
bindkey -M vicmd v edit-command-line

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# Updates editor information when the keymap changes.
#function zle-keymap-select() {
#  zle reset-prompt
#  zle -R
#}
#
#zle -N zle-keymap-select

#function vi_mode_prompt_info() {
#  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
#}
#
## define right prompt, regardless of whether the theme defined it
#RPS1='$(vi_mode_prompt_info)'
#RPS2=$RPS1

#stty icrnl
autoload -U compinit && compinit
zstyle ':completion:*' menu select

export ERL_EPMD_PORT=4379
export ERL_AFLAGS="-kernel shell_history enabled"
export ELIXIR_EDITOR="open kitty tmux new nvim +__LINE__ __FILE__"

alias python=/usr/local/bin/python3

export PATH="/home/ceres/.cargo/bin:$PATH"
DISABLE_UNTRACKED_FILES_DIRTY="true"

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}
export PATH="/usr/local/opt/icu4c/bin:$PATH"
