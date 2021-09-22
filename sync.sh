#!/usr/bin/env bash

sourcePaths=(
  "zshrc"
  "tmux.conf"
  "git/gitconfig"
  "git/gitconfig-dev"
  "git/gitconfig-work"
  "config/starship.toml"
  "config/nvim/init.vim"
  "config/nvim/plugins.vim"
  "config/nvim/settings.vim"
  "config/nvim/mappings.vim"
  "config/nvim/which-key.vim"
  "config/brewfile/Brewfile"
  "config/alacritty/alacritty.yml"
)

destinationPaths=(
  "${HOME}/.zshrc"
  "${HOME}/.tmux.conf"
  "${HOME}/.gitconfig"
  "${HOME}/.gitconfig-dev"
  "${HOME}/.gitconfig-work"
  "${HOME}/.config/starship.toml"
  "${HOME}/.config/nvim/init.vim"
  "${HOME}/.config/nvim/plugins.vim"
  "${HOME}/.config/nvim/settings.vim"
  "${HOME}/.config/nvim/mappings.vim"
  "${HOME}/.config/nvim/which-key.vim"
  "${HOME}/.config/brewfile/Brewfile"
  "${HOME}/.config/alacritty/alacritty.yml"
)

for ((idx=0; idx < ${#sourcePaths[@]}; ++idx)); do
  sp="${sourcePaths[$idx]}"
  dp="${destinationPaths[$idx]}"

  mkdir -p $(dirname ${dp}) && cp ${sp} ${dp}

  echo "Copied to ${destinationPaths[$idx]} successfully."
done
