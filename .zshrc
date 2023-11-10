
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#source ~/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh


export PF_INFO="ascii title os host kernel uptime pkgs memory shell editor palette"
pfetch

# Turn off bluetooth
#rfkill block bluetooth

alias upup="yay"
alias fup="sudo flatpak update --system"
alias ll="ls -la --color=auto"
alias lr="ls -latr --color=auto"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias pf="clear; pfetch"
alias wa="curl 'wttr.in/austin?u'"
alias wi="curl 'wttr.in/irving?u'"
alias wp="curl 'wttr.in/pearsall?u'"
alias ws="curl 'wttr.in/san_antonio?u'"
alias wd="curl 'wttr.in/dallas?u'"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias pgrep="grep -P --color=auto"
alias td="calcurse -t --format-todo '(%p) %m\n'"
alias cal="ncal -C"
alias ac="ansible-config"
alias ai="ansible-inventory"
alias ag="ansible-galaxy"
alias ap="ansible-playbook"
alias av="ansible-vault"
alias nv="nvim"
alias hss="hugo serve --noHTTPCache"
alias jctl="journalctl -xe"
alias em="emacsclient -c &"
#alias sc="emacsclient -c -e \(switch-to-buffer "*scratch*"\) &"


# Run all tests in bats file without stopping
bats() {
    BATS_RUN_SKIPPED=true command bats *.bats
}


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/chuey/.zshrc'

autoload -Uz compinit
compinit


export GOBIN=/home/chuey/Dev/go/bin
export GOPATH=/home/chuey/Dev/go
export PATH=$PATH:$GOBIN:~/.emacs.d/bin:/usr/local/share/nvim
