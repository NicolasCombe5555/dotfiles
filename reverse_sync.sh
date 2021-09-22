#!/usr/bin/env bash

source files.sh

for ((idx=0; idx < ${#sourcePaths[@]}; ++idx)); do
  sp="${sourcePaths[$idx]}"
  dp="${destinationPaths[$idx]}"

  cp ${dp} ${sp}

  echo "Updated ${sourcePaths[$idx]} successfully."
done
