# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugines
plugins=(git zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh

# Aliases
alias home="cd ~"
alias gits="git status"
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="tmux new -AD -s $(pwd | sed 's/.*\///g')" 

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ~/.zshrc
eval "$(starship init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Fzf
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'" # Always use colors
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/home/karlsn/.bun/_bun" ] && source "/home/karlsn/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# SSH
if [ $(ps ax | grep "[s]sh-agent" | wc -l) -eq 0 ] ; then
    eval $(ssh-agent -s) > /dev/null
    if [ "$(ssh-add -l)" = "The agent has no identities." ] ; then
        ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
    fi
fi

# WSL
# When splitting a pane open current path
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)
