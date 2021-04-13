# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lgg/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

DISP() {
	xrandr --newmode "3440x1440_60.00" 419.11 3440 3688 4064 4688  1440 1441 1444 1490 -HSync +Vsync
	xrandr --addmode Virtual1 "3440x1440_60.00"
	xrandr --output Virtual1 --mode "3440x1440_60.00"  
}

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$HOME/.config/nvcode/utils/bin:$PATH
export PATH=/home/$USER/.config/nvcode/utils/bin:$PATH
