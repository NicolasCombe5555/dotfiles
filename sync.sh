#!/usr/bin/env bash

source files.sh

for ((idx=0; idx < ${#sourcePaths[@]}; ++idx)); do
  sp="${sourcePaths[$idx]}"
  dp="${destinationPaths[$idx]}"

  mkdir -p "$(dirname "${dp}")" && cp "${sp}" "${dp}"

  echo "Copied to ${destinationPaths[$idx]} successfully."
done
