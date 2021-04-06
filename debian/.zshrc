# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# see https://github.com/tarjoilija/zgen#installation
# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh

  zgen oh-my-zsh plugins/autojump
  zgen oh-my-zsh plugins/alias-finder
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/composer
  zgen oh-my-zsh plugins/cp
  zgen oh-my-zsh plugins/debian
  zgen oh-my-zsh plugins/docker-compose
  zgen oh-my-zsh plugins/docker-machine
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/dotenv
  zgen oh-my-zsh plugins/emoji
  zgen oh-my-zsh plugins/fzf
  zgen oh-my-zsh plugins/gem
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/git-auto-fetch
  zgen oh-my-zsh plugins/git-lfs
  zgen oh-my-zsh plugins/git-prompt
  zgen oh-my-zsh plugins/gitfast
  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/gitignore
  zgen oh-my-zsh plugins/gpg-agent
  zgen oh-my-zsh plugins/jsontools
  zgen oh-my-zsh plugins/jump
  zgen oh-my-zsh plugins/laravel
  zgen oh-my-zsh plugins/lxd
  zgen oh-my-zsh plugins/nmap
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/npx
  zgen oh-my-zsh plugins/nvm
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/pipenv
  zgen oh-my-zsh plugins/pyenv
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/rust
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/torrent
  zgen oh-my-zsh plugins/ubuntu
  zgen oh-my-zsh plugins/vi-mode
  zgen oh-my-zsh plugins/vim-interaction
  zgen oh-my-zsh plugins/yarn
  zgen oh-my-zsh plugins/zsh-interactive-cd
  zgen oh-my-zsh plugins/zsh-navigation-tools
  zgen oh-my-zsh plugins/zsh_reload

  # others
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-history-substring-search

  # zgen oh-my-zsh themes/arrow
  # zgen oh-my-zsh themes/agnoster

  # load theme powerlevel10k
  zgen load romkatv/powerlevel10k powerlevel10k
  
  # generate the init script from plugins above
  zgen save
fi

# for vim
alias vim=nvim
alias vi=nvim

# for tmux
export TERM=xterm-256color
export EDITOR=vim

# load custom scripts
# https://stackoverflow.com/a/1423444
for f in ~/dotfiles/scripts/bash/*.sh; do source $f; done

JOKE () {
    curl https://icanhazdadjoke.com
}
# at the end enter our home
cd ~
# and start the tmux
tmux

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
