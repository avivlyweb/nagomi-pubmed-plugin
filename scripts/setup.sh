#!/usr/bin/env bash
set -euo pipefail

PLUGIN_ROOT="${1:-.}"
MCP_DIR="$PLUGIN_ROOT/pubmed-mcp"
VENV_DIR="$MCP_DIR/venv"

# Create venv if it doesn't exist
if [ ! -d "$VENV_DIR" ]; then
  python3 -m venv "$VENV_DIR" >&2
fi

# Install deps if marker file missing or requirements changed
MARKER="$VENV_DIR/.deps-installed"
if [ ! -f "$MARKER" ] || [ "$MCP_DIR/requirements.txt" -nt "$MARKER" ]; then
  "$VENV_DIR/bin/pip" install -q -r "$MCP_DIR/requirements.txt" >&2
  touch "$MARKER"
fi

# Launch the MCP server
exec "$VENV_DIR/bin/python" "$MCP_DIR/pubmed_mcp.py"
