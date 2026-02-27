---
description: Verify citations and references against PubMed records
globs:
alwaysApply: false
---

# Citation Verification Skill

When the user asks to verify references, check citations, or validate a bibliography, use the `verify_references` MCP tool.

## When to activate
- User asks to "verify" or "check" citations/references
- User provides a DOI, PMID, or reference list to validate
- User wants to ensure citation accuracy in a manuscript

## How to use

1. Call `verify_references` with:
   - `references`: The text containing references (or file path)
   - `format`: Optional format hint ("apa", "vancouver", "bibtex")

2. **Present verification results** with:
   - Match status for each reference (verified, unverified, partial match)
   - Specific discrepancies found (wrong year, author name, journal)
   - Suggested corrections
   - Confidence score for each match
