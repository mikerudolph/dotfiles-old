source ~/.nvm/nvm.sh
source ~/.rvm/scripts/rvm

alias cds="cd ~/slashjoin"
alias ls="ls -G"

function _update_ps1() {
  export PS1="$(~/repos/dotfiles/powerline-bash/powerline-bash.py $?)"
}

export PROMPT_COMMAND="_update_ps1"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
