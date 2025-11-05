#!/bin/bash
set -e

GREEN='\033[0;32m'
NC='\033[0m'

if [ ! -d "$HOME/.claude" ]; then
    echo "Error: Could not find ~/.claude directory"
    exit 1
fi

if [ -d "modules/claude-infrastructure" ]; then
    cd modules/claude-infrastructure
    ./install.sh
    cd ../..
    echo -e "${GREEN}✓ Infrastructure installed${NC}"
else
    echo "Error: claude-infrastructure module not found"
    exit 1
fi
