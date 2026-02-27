---
allowed-tools: mcp__pubmed__verify_references, mcp__pubmed-local__verify_references
description: Verify citations and references against PubMed
user-invocable: true
---

Verify the following references: $ARGUMENTS

Use the `verify_references` MCP tool to check each citation against PubMed records. Report match status, discrepancies found (wrong year, author, journal), suggested corrections, and confidence scores.
