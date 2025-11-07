# Contributing to FrankX Claude Code Ecosystem

Thank you for your interest in contributing! This ecosystem consists of 4 modular repositories, and contributions are welcome across all of them.

## Repositories

1. **[claude-complete](https://github.com/frankxai/claude-complete)** - Meta-repository (you are here)
2. **[claude-code-config](https://github.com/frankxai/claude-code-config)** - Core FrankX agents and configuration
3. **[claude-systematic-workflows](https://github.com/frankxai/claude-systematic-workflows)** - TDD and quality workflows
4. **[claude-infrastructure](https://github.com/frankxai/claude-infrastructure)** - DevOps and cloud automation

## How to Contribute

### Reporting Issues

- Use the issue tracker of the specific repository
- Provide clear reproduction steps
- Include Claude Code version and environment details
- Check existing issues first

### Suggesting Features

- Open a discussion in the appropriate repo
- Explain the use case and benefit
- Describe expected behavior
- Consider implementation approach

### Submitting Code

1. **Fork** the repository you want to contribute to
2. **Create a branch** for your feature/fix
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes** following the guidelines below
4. **Test thoroughly** in your Claude Code setup
5. **Commit** with clear messages (see commit guidelines)
6. **Push** to your fork
   ```bash
   git push origin feature/your-feature-name
   ```
7. **Open a Pull Request** with detailed description

## Contribution Guidelines

### Agents

When contributing agents:
- **Naming:** Use function-based gerunds (e.g., `processing-data`, not `Data Processor`)
- **YAML Frontmatter:** Required fields: name, description, personality (optional), mcpServers (if needed)
- **File Size:** Keep under 500 lines for readability
- **Documentation:** Include usage examples and best practices
- **Testing:** Test with real Claude Code workflows

Example structure:
```yaml
---
name: your-agent-name
description: Clear description of what this agent does (third person)
personality: "Optional: personality/voice for this agent"
mcpServers:
  - github
  - figma-remote-mcp
model: sonnet
---

# Agent Instructions

Clear, actionable instructions for the agent...
```

### Skills

When contributing skills:
- Create a `SKILL.md` file in appropriate directory
- Include clear purpose and usage instructions
- Provide examples
- Test activation with Claude Code

### Commands

When contributing slash commands:
- Create a `.md` file in commands directory
- Write clear purpose at the top
- Include step-by-step instructions
- Test command execution

### Documentation

- Use clear, concise language
- Include code examples where helpful
- Follow existing formatting
- Update relevant README files

## Code Standards

### Professional Standards
- Follow [Anthropic best practices](https://docs.anthropic.com/claude-code/best-practices)
- Function-based naming (gerunds, lowercase-with-hyphens)
- YAML frontmatter for configuration
- Progressive disclosure for large files

### File Organization
```
agents/
  your-agent.md
skills/
  your-skill/
    SKILL.md
commands/
  your-command.md
```

### Commit Messages

Follow conventional commits:
```
feat: add kubernetes-monitoring agent
fix: correct terraform-infrastructure syntax
docs: update installation guide
refactor: simplify agent frontmatter
```

**Required format:**
```bash
git commit -m "$(cat <<'EOF'
type: short description

Longer explanation if needed.

🤖 Generated with Claude Code

Co-Authored-By: Claude <noreply@anthropic.com>
EOF
)"
```

## What to Contribute

### High-Priority Contributions

**Agents:**
- Domain-specific agents (healthcare, finance, legal, etc.)
- Tool integrations (Slack, Notion, Linear, Figma, etc.)
- Workflow automation agents

**Skills:**
- Industry expertise (your domain knowledge)
- Tool mastery (software you know deeply)
- Methodologies (frameworks, best practices)

**Infrastructure:**
- Security auditing agents
- Performance optimization agents
- Cloud provider integrations (AWS, GCP, Azure)
- Monitoring and observability

**Documentation:**
- Tutorials and guides
- Use case examples
- Troubleshooting tips
- Video walkthroughs

### Ideas Welcome

- Novel agent architectures
- MCP server integrations
- Workflow improvements
- Performance enhancements
- Bug fixes

## Community

- **Discussions:** https://github.com/frankxai/claude-complete/discussions
- **Discord/Slack:** Coming soon for sponsors
- **Email:** frank@frankxai.com for significant contributions

## Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md
- Mentioned in release notes
- Credited in relevant documentation
- Considered for sponsor benefits (if applicable)

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

## Questions?

- Open a discussion in the appropriate repo
- Email frank@frankxai.com
- Check existing documentation

## Thank You!

Every contribution helps make this the best Claude Code ecosystem on GitHub. Whether it's fixing a typo, adding an agent, or improving documentation - it all matters.

**Let's build something extraordinary together.** 🚀
