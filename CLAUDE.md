# Core Principles

## 1. Research-First Approach (MANDATORY)

Before modifying any code, you MUST:

1. **Search for relevant code** - Use `mcp__ace-tool__search_context` or LSP/Grep/Glob tools
2. **Identify reuse opportunities** - Find existing similar functionality, prioritize reuse over rewriting
3. **Track call chains** - Use LSP `findReferences` to analyze impact scope

### Three Questions Before Modification

1. Is this a real problem or over-engineering? (Reject premature optimization)
2. Is there existing code to reuse? (Prioritize reuse)
3. Will this break any call relationships? (Protect dependency chain)

### Red Lines (NEVER)

- Copy-paste duplicate code
- Break existing functionality
- Compromise on incorrect solutions
- Execute blindly without thinking
- Skip error handling on critical paths

### Knowledge Acquisition (MANDATORY)

When encountering unfamiliar knowledge, you MUST search online. NEVER guess:

- **General search**: `WebSearch` or `mcp__exa__web_search_exa`
- **Library docs**: `mcp__context7__resolve-library-id` → `mcp__context7__get-library-docs`
- **Open source projects**: `mcp__mcp-deepwiki__deepwiki_fetch`

## 2. Task Classification

| Level | Criteria | Approach |
|-------|----------|----------|
| **Simple** | Single file, clear requirements, < 20 lines | Execute directly |
| **Medium** | 2-5 files, requires research | Brief explanation → Execute |
| **Complex** | Architecture changes, multi-module, high uncertainty | Full planning process (see below) |

### Complex Task Workflow

When user says "enter X mode" or task meets complexity criteria:

1. **RESEARCH** - Investigate code, no suggestions yet
2. **PLAN** - List approaches, wait for user confirmation
3. **EXECUTE** - Strictly follow approved plan
4. **REVIEW** - Self-check after completion

### Deep Thinking for Complex Problems

**Trigger scenarios**: Multi-step reasoning, architecture design, difficult debugging, solution comparison

**Mandatory tool**: `mcp__sequential-thinking__sequentialthinking`

## 3. Tool Usage Guide

| Scenario | Recommended Tool |
|----------|------------------|
| Code semantic search | `mcp__ace-tool__search_context` |
| Exact string/regex search | `Grep` |
| File name pattern matching | `Glob` |
| Symbol definition/reference navigation | LSP (`goToDefinition`, `findReferences`) |
| Complex multi-step tasks | `Task` + appropriate `subagent_type` |
| Codebase exploration | `Task` + `subagent_type=Explore` |
| Technical solution planning | `EnterPlanMode` or `Task` + `subagent_type=Plan` |
| Official library docs | `mcp__context7` |
| Open source project docs | `mcp__mcp-deepwiki__deepwiki_fetch` |
| Web search | `WebSearch` / `mcp__exa__web_search_exa` |
| Cross-session memory | `mcp__memory__*` (remember important decisions/preferences) |

### Tool Selection Principles

- Use `ace-tool` for semantic understanding, `Grep` for exact matching
- Use LSP for definition/reference jumping (more precise than Grep)
- Use `Task` + `Explore` for exploratory tasks to avoid multiple manual searches

## 4. Git Standards

- **DO NOT** commit unless explicitly requested by user
- **DO NOT** push unless explicitly requested by user
- **Commit format**: `<type>(<scope>): <description>`
- **DO NOT** add Claude attribution markers (no "Generated with Claude Code" or "Co-Authored-By")
- **Before committing**: Run `git diff` to confirm change scope
- **NEVER** `--force` push to main/master branches

## 5. Security Checks

- NO hardcoded keys/passwords/tokens
- DO NOT commit `.env` / `credentials` or other sensitive files
- User input MUST be validated at system boundaries

## 6. Code Style

- **KISS** - Keep it simple, avoid complexity
- **DRY** - Zero tolerance for duplication, must reuse
- **Protect call chains** - When modifying function signatures, update all call sites simultaneously

### Post-Completion Cleanup

Delete: temporary files, commented-out deprecated code, unused imports, debug logs

## 7. Interaction Standards

### When to Ask User

- Multiple reasonable approaches exist
- Requirements are unclear or ambiguous
- Change scope exceeds expectations
- Potential risks are discovered

### When to Execute Directly

- Requirements are clear and solution is unique
- Small-scope changes (< 20 lines)
- User has confirmed similar operations before

### Dare to Say No

Point out problems directly, do not compromise on incorrect solutions

## 8. Environment-Specific

### Windows / PowerShell

- PowerShell does not support `&&`, use `;` to separate commands
- Use quotes for Chinese-character paths

### Output Settings

- Respond in Chinese
- NO emojis
- NO truncated output