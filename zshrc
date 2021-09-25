### MARK: Install https://ohmyz.sh

### Oh my zsh config

export ZSH="/Users/nicolascombe/.oh-my-zsh" # Path to my oh-my-zsh installation. (path might differ)

ZSH_DISABLE_COMPFIX="true" # https://stackoverflow.com/questions/61433167/zsh-detects-insecure-completion-dependent-directories
DISABLE_UPDATE_PROMPT="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_TMUX_AUTOSTART=true

plugins=(
  tmux
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


### Aliases
alias dog='cat -b'
alias list='exa -a1'
alias lsn='exa -hal'
alias lss='exa -halSR'


### Methods

## General
cleandd() {
  rm -rf ~/Library/Developer/Xcode/DerivedData
  echo "Removed all derived data."
}

cleands() {
  find . -name ".DS_Store" -delete
  echo "Removed DS_Stores"
}

## Git
gitdiscard() {
  git clean -d -f . # deletes all local current untracked files
  git reset --hard # discards local changes
}

gitdestroy() {
  git prune
  git clean -d -f . # deletes all local current untracked files
  git reset --hard # discards local changes
}

ztash() {
  readonly name=${1:?"You must specify a name for the stash to apply"}
  git stash apply stash^{/${name}} 
}

## Local
cleanbazel() {
  rm -rf ~/Users/usuario/bazel-local-cache
  echo "Removed bazel cache."
}

gotochat() {
  cd ~/Projects/ios-rappi-main/libraries/Chat/Chat_Example
}

gotorappi() {
  cd ~/Projects/ios-rappi-main/apps/Grability
}

dotfiles() {
  cd ~/Personal/dotfiles
}

### Starship - https://github.com/starship/starship
eval "$(starship init zsh)"
