# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "plugins/git"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Prompt
PROMPT="%B%F{220}%~%f%b"
PROMPT+="\$vcs_info_msg_0_ "

# Persist pywal on terminal 
(cat ~/.cache/wal/sequences &)

# Auto start sway
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	wal -R # Make the colorscheme persist on reboot
	sway
fi

# Source aliases and icons
source ~/.zaliases

