#!/bin/bash
set -e

GREEN='\033[0;32m'
NC='\033[0m'

if [ ! -d "$HOME/.claude" ]; then
    echo "Error: Could not find ~/.claude directory"
    exit 1
fi

if [ -d "modules/claude-systematic-workflows" ]; then
    cd modules/claude-systematic-workflows
    ./install.sh
    cd ../..
    echo -e "${GREEN}✓ Systematic Workflows installed${NC}"
else
    echo "Error: claude-systematic-workflows module not found"
    exit 1
fi
