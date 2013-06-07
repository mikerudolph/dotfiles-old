HISTCONTROL=ignoreups:ignorespace

alias ls="ls -G -F"
alias clr="clear"

alias cds="cd ~/Repos/slashjoin"
alias cdp="cd ~/Repos/platform"
alias cdw="cd ~/Repos/Personal/weshouldeat"
alias cdd="cd ~/Repos/demos"
alias fsi="cd ~/Repos/demos/fsi"

source ~/.nvm/nvm.sh

function _update_ps1() {
   export PS1="$(~/powerline-shell.py --cwd-only $?)"
}

export PROMPT_COMMAND="_update_ps1"

# Path exports
export PATH="$PATH:/Users/mike.rudolph/Repos/slashjoin/node_modules/.bin"
export EDITOR=vim

PATH=$PATH:$HOME/.rvm/bin
source ~/.rvm/scripts/rvm
