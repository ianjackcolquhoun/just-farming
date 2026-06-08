#!/usr/bin/env bash
set -euo pipefail

COUNT="${1:-2}"
echo "==> Farming Pull Shark: merging $COUNT PRs"

for i in $(seq 1 "$COUNT"); do
    BRANCH="farm/pull-shark-$i-$(date +%s)"

    git checkout -b "$BRANCH"
    echo "pull-shark-$i $(date)" >> .achievements
    git add .achievements
    git commit -m "achievement: pull shark #$i"
    git push -u origin "$BRANCH"

    PR_URL=$(gh pr create --title "Pull Shark #$i" --body "Automated achievement farming" --head "$BRANCH")
    gh pr merge "$PR_URL" --merge --delete-branch

    git checkout main
    git pull origin main

    echo "    [$i/$COUNT] merged"
done

echo "==> Done! $COUNT PRs merged toward Pull Shark."
