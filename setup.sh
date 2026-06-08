#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="just-farming"

echo "==> Initializing git repo..."
git init
git add .
git commit -m "initial commit"

echo "==> Creating private GitHub repo: $REPO_NAME"
gh repo create "$REPO_NAME" --private --source=. --push

echo "==> Done! Remote set to origin."
echo "    Run the farm scripts to start earning achievements."
