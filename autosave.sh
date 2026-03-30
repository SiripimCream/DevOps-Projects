#!/bin/bash
while true
do
  if [[ -n $(git status -s) ]]; then
    git add .
    git commit -m "Auto-sync from Asus VivooBook: $(date)"
    git push origin main
    echo "Saved to GitHub at $(date)"
  fi
  sleep 300
done
