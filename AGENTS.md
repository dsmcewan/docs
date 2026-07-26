# Documentation project instructions

## About this project

- This is a documentation site built on [Mintlify](https://mintlify.com).
- Pages are MDX files with YAML frontmatter (`title`, `description`).
- Site configuration lives in `docs.json`; navigation is defined under `navigation.pages`.
- Use the Mintlify MCP server, `https://mcp.mintlify.com`, to edit content and settings via MCP.
- Use the Mintlify docs MCP server, `https://mintlify.com/docs/mcp`, to query information about using Mintlify via MCP.

## Terminology

Prefer these terms for consistency across the docs:

| Use | Not |
| --- | --- |
| page | doc, article |
| navigation | sidebar, menu |
| frontmatter | metadata, header |
| component | widget, element |
| `docs.json` | config file, mint.json |

{/* Add product-specific terms as the product takes shape. */}

## Style preferences

- Use active voice and second person ("you").
- Keep sentences concise — one idea per sentence.
- Use sentence case for headings.
- The page's H1 comes from the frontmatter `title` — do not add a top-level `#` heading in the body.
- Bold for UI elements: Click **Settings**.
- Code formatting for file names, commands, paths, and code references.
- Prefer Mintlify components (`<Card>`, `<Steps>`, `<Tabs>`, `<Tip>`, `<Note>`, `<Warning>`) over raw HTML.

## Content boundaries

- Document user-facing product behavior only.
- Do not document internal admin features or unreleased functionality.
- Never include real secrets, tokens, or credentials in code samples — use obvious placeholders (`YOUR_API_KEY`).

## Workflow

**Add a page**

1. Create an `.mdx` file with frontmatter:
   ```mdx
   ---
   title: "Page title"
   description: "One-line summary of the page"
   ---
   ```
2. Register the page path in `docs.json` under `navigation.pages` (use the path without the `.mdx` extension).

**Preview and validate**

- `mint dev` — preview the site locally (the `mint` CLI is installed automatically in web sessions; see `.claude/hooks/session-start.sh`).
- `mint broken-links` — check for broken internal links before committing.

## Agent tooling inventory

Tooling wired into this repo for AI-assisted docs work, and when to use each:

- **Mintlify editing MCP** (`https://mcp.mintlify.com`) — edit page content and site settings programmatically. Configured in `.mcp.json`.
- **Mintlify docs-knowledge MCP** (`https://mintlify.com/docs/mcp`) — look up how to use Mintlify components, frontmatter, and `docs.json` configuration. Configured in `.mcp.json`.
- **Mintlify docs skill** (`npx skills add https://mintlify.com/docs`) — local component reference, writing standards, and workflow guidance for the AI tool.
- **`mint` CLI** — local preview (`mint dev`) and validation (`mint broken-links`), installed by the SessionStart hook.
