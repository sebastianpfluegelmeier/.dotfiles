# Lines configured by zsh-newuser-install HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sebastian/.zshrc'

autoload -Uz compinit
compinit
autoload -Uz promptinit
promptinit
autoload -Uz colors
colors
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias cot='cargo test'
alias cotp='cargo test -- --nocapture'
alias cob='cargo build'
alias cor='cargo run'
alias nch='sudo netctl start home'
alias nce='sudo netctl start eferindg'
alias nc='sudo netctl start'
alias ncl='sudo netctl start loolas'
# alias js='jackd -r -d alsa -r 44100 --silent'
alias js='jackd -r 44100 -d alsa --silent'
alias ls='ls --color=auto'
alias ps='sudo pacman -S'
alias pr='sudo pacman -R'
# alias tidal='sudo rm garbage & sudo sclang -D p/tidal/init/init.sc > garbage & tidalvim'
alias sctidal='sudo sclang ~/.tidalinit.sc & tidal'
alias vi='nvim'
alias svi='sudo nvim -u /home/sebastian/.config/nvim/init.vim'
alias ps='sudo pacman -S'
alias dual='~/.screenlayout/dual.sh'
alias right='~/.screenlayout/dual_right.sh'
alias capstoesc='xmodmap ~/.Xmodmap'

PROMPT="%{$fg_bold[red]%}>> %{$reset_color%}"
export VISUAL=nvim
export EDITOR="$VISUAL"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
# End of lines added by compinstall
