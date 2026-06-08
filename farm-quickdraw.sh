#!/usr/bin/env bash
set -euo pipefail

echo "==> Farming Quickdraw: opening and closing an issue within 5 min"

ISSUE_URL=$(gh issue create --title "Quickdraw $(date +%s)" --body "Speed closure")
ISSUE_NUM=$(echo "$ISSUE_URL" | grep -o '[0-9]*$')

gh issue close "$ISSUE_NUM"

echo "==> Done! Quickdraw achievement unlocked."
