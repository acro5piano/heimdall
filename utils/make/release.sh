#!/bin/sh

set -o errexit

head=$(git rev-parse --abbrev-ref HEAD)

printf "\n=====>\tCreating release branch...\n"

git checkout -b release

printf "\n=====>\tPushing...\n"

git push --set-upstream origin release

printf "\n=====>\tSwitching back to previous branch...\n"

git checkout "${head}"

printf "\n=====>\tDeleting local release branch...\n"

git branch --delete release

printf "\n=====>\tRelease in progress: https://github.com/strvcom/heimdall/actions\n"
