#!/bin/bash
# SETD5 Foundation — Deploy Changes
# Double-click this file to commit and push your latest changes to the live website.

cd "$(dirname "$0")"

echo "🌿 SETD5 Foundation — Deploying changes..."
echo ""

# Clear any stale git locks
rm -f .git/index.lock .git/HEAD.lock .git/ORIG_HEAD.lock
rm -f .git/COMMIT_EDITMSG.lock .git/objects/maintenance.lock
rm -f .git/refs/remotes/origin/master.lock

# Pull any changes Claude may have pushed directly, then stage and push ours on top
git pull --rebase origin master

# Stage all tracked changed files
git add index.html board/index.html board/board-policies-handbook.html board/bylaws.html \
        board/meeting-minutes.html board/board-resolutions.html \
        board/documents/written-consent.html board/documents/meeting-script.html

git diff --cached --quiet && echo "Nothing new to commit." || \
  git commit -m "Deploy latest changes"

# Push
git push origin master

echo ""
echo "✅ Done! Changes are live at setd5syndrome.org"
echo ""
echo "Press any key to close this window..."
read -n 1
