#!/bin/bash
set -euo pipefail

# Only run in Claude Code on the web (remote) sessions.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install the Mintlify CLI so docs can be previewed and validated
# (`mint dev`, `mint broken-links`). Idempotent and non-fatal.
if ! command -v mint >/dev/null 2>&1; then
  npm install -g mint >/dev/null 2>&1 || true
fi
