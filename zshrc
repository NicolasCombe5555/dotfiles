### MARK: Install https://ohmyz.sh

### Oh my zsh config
plugins=(
  git
  zsh-autosuggestions
)

ZSH_DISABLE_COMPFIX="true" # https://stackoverflow.com/questions/61433167/zsh-detects-insecure-completion-dependent-directories

### Aliases
alias dog='cat -b'
alias lastTen='ls -lt | head'
alias lsn='ls -hal'
alias lss='ls -halSR'

### Methods
cleandd() {
  rm -rf ~/Library/Developer/Xcode/DerivedData
  echo "Removed all derived data."
}

go_to_chat() {
  cd ~/Desktop/ios-rappi-main/libraries/Chat/Chat_Example
}

gitdestroy() {
  git prune
  git clean -d -f . # deletes all local current untracked files
  git reset --hard # discards local changes
}

### Starship - https://github.com/starship/starship
eval "$(starship init zsh)"
