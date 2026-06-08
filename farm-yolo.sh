#!/usr/bin/env bash
set -euo pipefail

echo "==> Farming YOLO: merging a PR without review"

BRANCH="farm/yolo-$(date +%s)"

git checkout -b "$BRANCH"
echo "yolo $(date)" >> .achievements
git add .achievements
git commit -m "achievement: yolo"
git push -u origin "$BRANCH"

PR_URL=$(gh pr create --title "YOLO" --body "Merged without review — living dangerously")
gh pr merge "$PR_URL" --merge --delete-branch

git checkout main
git pull origin main

echo "==> Done! YOLO achievement unlocked."
