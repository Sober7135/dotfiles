source $HOME/.docker/init-zsh.sh
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$(brew --prefix bison)/bin/:$PATH"
export PATH="$(brew --prefix llvm)/bin/:$PATH"
export PATH="$(brew --prefix sphinx-doc)/bin:$PATH"
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"
export PATH="$PATH:/Users/sober/go/bin"
# For rCore
export PATH="$PATH:/Users/sober/Documents/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-apple-darwin/bin"


fpath+=~/.zfunc

# export all_proxy="127.0.0.1:7890"
export all_proxy="127.0.0.1:20171"

export GOPROXY=https://goproxy.io,direct

# For LLVM 
export CC="/opt/homebrew/opt/llvm/bin/clang"
alias CXX="$(brew --prefix)/opt/llvm/bin/clang++ -nostdinc++ -nostdlib++ -isystem $(brew --prefix)/opt/llvm/include/c++/v1 -L $(brew --prefix)/opt/llvm/lib -Wl,-rpath,$(brew --prefix)/opt/llvm/lib  -lc++"

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

alias ra="ranger"
alias ls="ls --color"
alias f="fastfetch"
alias la="ls --color -a"
alias clear="printf '\33c\e[3J'"
alias cl="printf '\33c\e[3J'"
alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"
alias v="nvim "
alias vi="nvim --noplugin"
alias sudo="sudo "
alias fzf="find . | fzf"
alias gs="git status"
alias aria2c="aria2c -x10"
function cf() {
	cd "$(find . -type d | fzf )"
}

chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

dec2hex() {
	LC_CTYPE=C printf '0x%x' "$1"
}

hex2dec() {
	printf '%d' "$1"
}

# source

export ZVM_VI_ESCAPE_BINDKEY="jj"
export ZVM_CURSOR_STYLE_ENABLED=false

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-z/zsh-z.plugin.zsh

typeset -U PATH

[ -f "/Users/sober/.ghcup/env" ] && source "/Users/sober/.ghcup/env" # ghcup-env
eval "$(starship init zsh)"
