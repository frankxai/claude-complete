#!/bin/bash
set -e

GREEN='\033[0;32m'
NC='\033[0m'

if [ ! -d "$HOME/.claude" ]; then
    echo "Error: Could not find ~/.claude directory"
    exit 1
fi

if [ -d "modules/claude-code-config" ]; then
    cd modules/claude-code-config
    ./sync-from-repo.sh 2>/dev/null || {
        cp -r public/agents/* "$HOME/.claude/agents/" 2>/dev/null || true
        cp -r public/commands/* "$HOME/.claude/commands/" 2>/dev/null || true
        cp -r public/skills/* "$HOME/.claude/skills/" 2>/dev/null || true
    }
    cd ../..
    echo -e "${GREEN}✓ FrankX Core installed${NC}"
else
    echo "Error: claude-code-config module not found"
    exit 1
fi
