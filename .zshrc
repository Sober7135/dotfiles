# https://stackoverflow.com/questions/64276163/dismiss-zsh-completion-list-after-typing-a-character
setopt menucomplete
setopt inc_append_history

export EDITOR="nvim --noplugin"

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# export all_proxy="127.0.0.1:20172"
export CHROOT=/mnt/chroot
export GOPROXY=https://goproxy.io,direct

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' glob unset
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/sober/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install



alias ls="ls --color"
alias f="fastfetch"
alias la="ls --color -a"
alias clear="printf '\33c\e[3J'"
alias cl="printf '\33c\e[3J'"
alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"
alias nv="nvim "
alias vi="nvim --noplugin"
alias sudo="sudo "
alias fzf="find . | fzf"
alias gs="git status -u"
alias aria2c="aria2c -x10"
alias m="make"
alias code="code --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto"
alias dockerx="docker"
# alias code="code --enable-features=WaylandWindowDecorations"
alias grep="grep --color"
alias cbb="cmake --build build"

function cf() {
	cd "$(find . -type d | fzf )"
}

function chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

function ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

function dec2hex() {
	LC_CTYPE=C printf '0x%x' "$1"
}

function hex2dec() {
	printf '%d' "$1"
}

export ZVM_VI_ESCAPE_BINDKEY="jj"
export ZVM_CURSOR_STYLE_ENABLED=false


export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="/opt/llvm/bin/:$PATH"

typeset -U PATH

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export GPG_TTY=$(tty)
