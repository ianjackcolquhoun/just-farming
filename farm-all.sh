#!/usr/bin/env bash
set -euo pipefail

echo "==> Farming all private-repo achievements at base tier"
echo ""

./farm-quickdraw.sh
echo ""

./farm-yolo.sh
echo ""

./farm-pull-shark.sh 2
echo ""

./farm-pair-extraordinaire.sh 1
echo ""

echo "==================================================="
echo "  All base-tier achievements unlocked!"
echo "  - Quickdraw"
echo "  - YOLO"
echo "  - Pull Shark (bronze)"
echo "  - Pair Extraordinaire (bronze)"
echo ""
echo "  To grind higher tiers:"
echo "    ./farm-pull-shark.sh 128"
echo "    ./farm-pair-extraordinaire.sh 48"
echo "==================================================="
