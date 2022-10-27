
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



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
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install


export ZVM_VI_ESCAPE_BINDKEY="jj"
export ZVM_CURSOR_STYLE_ENABLED=false

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

alias ra="ranger"
alias ls="ls --color"
alias n="neofetch"
alias la="ls --color -a"
alias cl="clear"
alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"
alias ip="ip -c"
alias v="nvim "
alias sudo="sudo "
alias ..="cd .."
alias fzf="find . | fzf"
alias s="startx"
alias c="code"

# git 
alias gs="git status"
alias gaa="git add ."
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gps="git push"
alias gpl="git pull"

alias proxy="export all_proxy=http://127.0.0.1:20171"
alias unproxy="unset all_proxy"

export PATH="$PATH:$HOME/.local/bin/scripts:$(go env GOPATH)/bin"
export PATH="$PATH:$HOME/.ghcup/bin"

# set default editor for ranger
export VISUAL=nvim
export EDITOR=nvim

# For alacritty, make the font size same on different screens.
export WINIT_X11_SCALE_FACTOR=1.66
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
