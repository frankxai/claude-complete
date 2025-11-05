#!/bin/bash
set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}╔════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  Claude Complete - Full Installation      ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════╝${NC}"
echo ""

# Detect Claude directory
if [ -d "$HOME/.claude" ]; then
    CLAUDE_DIR="$HOME/.claude"
else
    echo "Error: Could not find ~/.claude directory"
    exit 1
fi

echo -e "${YELLOW}Installing to: $CLAUDE_DIR${NC}"
echo ""

# Backup
BACKUP_DIR="$CLAUDE_DIR.backup.$(date +%Y%m%d_%H%M%S)"
echo -e "${YELLOW}Creating backup at: $BACKUP_DIR${NC}"
cp -r "$CLAUDE_DIR" "$BACKUP_DIR" 2>/dev/null || true

# Install Core
echo -e "${BLUE}[1/4] Installing FrankX Core...${NC}"
./install-core.sh

# Install Workflows
echo ""
echo -e "${BLUE}[2/4] Installing Systematic Workflows...${NC}"
./install-workflows.sh

# Install Infrastructure
echo ""
echo -e "${BLUE}[3/4] Installing Infrastructure...${NC}"
./install-infrastructure.sh

# Install Skills Library
echo ""
echo -e "${BLUE}[4/4] Installing Skills Library...${NC}"
if [ -d "modules/claude-skills-library" ]; then
    cp -r modules/claude-skills-library/free-skills/* "$CLAUDE_DIR/skills/" 2>/dev/null || true
    echo -e "${GREEN}  ✓ Skills library installed${NC}"
fi

echo ""
echo -e "${BLUE}╔════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  ✓ Complete Installation Finished!        ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}You now have:${NC}"
echo "  📦 17 FrankX Core Agents"
echo "  🔄 Systematic TDD Workflows"
echo "  ⚙️  Infrastructure & DevOps"
echo "  🧠 15+ Expert Skills"
echo ""
echo -e "${YELLOW}Try these commands in Claude Code:${NC}"
echo "  /dev \"add feature\"    # TDD development"
echo "  /check                # Quality validation"
echo "  /council              # Strategic guidance"
echo ""
echo -e "${GREEN}Backup location:${NC} $BACKUP_DIR"
