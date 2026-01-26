#!/bin/bash

# Script to help push to GitHub with authentication

set -e

echo "🚀 Pushing to GitHub..."
echo ""

# Check if we're in the right directory
if [ ! -d ".git" ]; then
  echo "❌ Not a git repository. Please run this from the project root."
  exit 1
fi

# Check remote
REMOTE=$(git remote get-url origin 2>/dev/null || echo "")
if [ -z "$REMOTE" ]; then
  echo "❌ No remote configured"
  exit 1
fi

echo "📍 Remote: $REMOTE"
echo ""

# Check if using HTTPS
if [[ "$REMOTE" == https://* ]]; then
  echo "📝 Using HTTPS authentication"
  echo ""
  echo "You need to authenticate. Choose an option:"
  echo ""
  echo "Option 1: Use Personal Access Token (Recommended)"
  echo "  1. Go to: https://github.com/settings/tokens/new"
  echo "  2. Generate token with 'repo' scope"
  echo "  3. Run: git push -u origin main"
  echo "  4. When prompted:"
  echo "     Username: your_github_username"
  echo "     Password: paste_your_token_here"
  echo ""
  echo "Option 2: Switch to SSH"
  echo "  Run: bash scripts/setup-ssh-push.sh"
  echo ""
  
  # Try to push (will prompt for credentials)
  echo "Attempting to push (you'll be prompted for credentials)..."
  git push -u origin main || {
    echo ""
    echo "❌ Push failed. Please authenticate using one of the options above."
    exit 1
  }
else
  # Using SSH
  echo "📝 Using SSH authentication"
  git push -u origin main
fi

echo ""
echo "✅ Push completed successfully!"
echo "View your repository at: https://github.com/Nadimsalah/Argan"
