neofetch --config ~/.config/neofetch/configZSH.conf

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/leon/.spicetify
export ZSH="$HOME/.oh-my-zsh"
export PATH=~/.local/bin:$PATH
export "MICRO_TRUECOLOR=1"

ZSH_HIGHLIGHT_HIDDEN='true'
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-autosuggestions zsh-syntax-highlighting git archlinux sudo)
source $ZSH/oh-my-zsh.sh

alias ls='logo-ls'
alias uhr='tty-clock -s -c -B -C1'
alias v="nvim"
alias zconfig='nano ~/.zshrc'
alias zsource='source ~/.zshrc'
alias pconfig='nano ~/.config/polybar/config.ini'
alias bspwmconf='nano ~/.config/bspwm/bspwmrc'
alias sxhkdconf='nano ~/.config/sxhkd/sxhkdrc'
alias sxrestart='pkill -USR1 -x sxhkd'
alias connect95='nmcli device wifi connect NETGEAR95 password fuzzyonion317'
alias connect57='nmcli device wifi connect NETGEAR57 password grandstreet123'
alias firefox-pv='firefox --private-window'