#!/usr/bin/env bash
set -euo pipefail

COUNT="${1:-1}"

# You need a real GitHub user as co-author for this to count.
# Replace with any GitHub user's name + their GitHub noreply email.
# Format: "Name <username@users.noreply.github.com>"
COAUTHOR="${COAUTHOR:-Claude <noreply@github.com>}"

echo "==> Farming Pair Extraordinaire: $COUNT co-authored PRs"
echo "    Co-author: $COAUTHOR"
echo "    (Set COAUTHOR env var to change)"

for i in $(seq 1 "$COUNT"); do
    BRANCH="farm/pair-$i-$(date +%s)"

    git checkout -b "$BRANCH"
    echo "pair-extraordinaire-$i $(date)" >> .achievements
    git add .achievements
    git commit -m "$(cat <<EOF
achievement: pair extraordinaire #$i

Co-authored-by: $COAUTHOR
EOF
)"
    git push -u origin "$BRANCH"

    PR_URL=$(gh pr create --title "Pair Extraordinaire #$i" --body "Co-authored achievement farming")
    gh pr merge "$PR_URL" --merge --delete-branch

    git checkout main
    git pull origin main

    echo "    [$i/$COUNT] merged"
done

echo "==> Done! $COUNT co-authored PRs merged toward Pair Extraordinaire."
