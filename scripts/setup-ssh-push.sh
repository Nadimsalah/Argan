#!/bin/bash

# Script to set up SSH authentication for GitHub

set -e

echo "🔐 Setting up SSH authentication for GitHub"
echo ""

# Check if SSH key exists
if [ -f ~/.ssh/id_ed25519.pub ]; then
  echo "✅ SSH key found: id_ed25519"
  KEY_FILE=~/.ssh/id_ed25519.pub
elif [ -f ~/.ssh/id_rsa.pub ]; then
  echo "✅ SSH key found: id_rsa"
  KEY_FILE=~/.ssh/id_rsa.pub
else
  echo "📝 No SSH key found. Generating one..."
  read -p "Enter your GitHub email: " EMAIL
  ssh-keygen -t ed25519 -C "$EMAIL" -f ~/.ssh/id_ed25519 -N ""
  KEY_FILE=~/.ssh/id_ed25519.pub
  echo "✅ SSH key generated!"
fi

echo ""
echo "📋 Your public SSH key:"
echo "----------------------------------------"
cat "$KEY_FILE"
echo "----------------------------------------"
echo ""

echo "📝 Next steps:"
echo "1. Copy the key above (the entire output)"
echo "2. Go to: https://github.com/settings/keys"
echo "3. Click 'New SSH key'"
echo "4. Paste the key and save"
echo ""
read -p "Press Enter after you've added the key to GitHub..."

# Change remote to SSH
echo ""
echo "🔄 Changing remote to SSH..."
git remote set-url origin git@github.com:Nadimsalah/Argan.git

echo "✅ Remote updated to SSH"
echo ""
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Your code is now on GitHub!"
