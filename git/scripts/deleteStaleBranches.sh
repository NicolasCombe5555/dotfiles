#!/usr/bin/env bash

# Loop through all remote branches
for branch in $(git branch -r | sed /\*/d); do
        if [ -z "$(git log -1 --since='7 years ago' -s ${branch})" ]; then
                echo -e "git show --format='%ci %cr %an' ${branch}" | head -n 1 \\t$branch
                remote_branch=$(echo ${branch} | sed 's#origin/##' )
                # To delete the branches uncomment the bellow git delete command
                # git push origin --delete ${remote_branch}
        fi
done
