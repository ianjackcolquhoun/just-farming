# GitHub Achievement Farmer

Scripts to automate earning GitHub achievements from a private repo.

## Prerequisites

- `gh` CLI installed and authenticated (`gh auth login`)
- `git` configured with your name and email

## Setup

```bash
./setup.sh
```

Creates a private GitHub repo and sets it as the remote.

## Achievements

| Script | Achievement | Tiers |
|--------|------------|-------|
| `farm-pull-shark.sh <count>` | Pull Shark | 2 / 16 / 128 / 1024 |
| `farm-yolo.sh` | YOLO | 1 (one-time) |
| `farm-quickdraw.sh` | Quickdraw | 1 (one-time) |
| `farm-pair-extraordinaire.sh <count>` | Pair Extraordinaire | 1 / 10 / 24 / 48 |

## Usage

```bash
# Unlock everything at base tier
./farm-yolo.sh
./farm-quickdraw.sh
./farm-pull-shark.sh 2
./farm-pair-extraordinaire.sh 1

# Grind Pull Shark to gold
./farm-pull-shark.sh 128

# Grind Pair Extraordinaire to max
./farm-pair-extraordinaire.sh 48
```
