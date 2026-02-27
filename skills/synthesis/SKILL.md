---
description: Synthesize research evidence from PubMed into structured summaries
globs:
alwaysApply: false
---

# Research Synthesis Skill

When the user asks for a research summary, evidence synthesis, or literature review, use the `generate_research_summary` MCP tool.

## When to activate
- User asks for a "research summary" or "literature review"
- User wants to "synthesize the evidence" on a topic
- User asks "what do studies show about..."

## How to use

1. Call `generate_research_summary` with:
   - `topic`: The research topic
   - `max_articles`: Number of articles to include (default 15)
   - `focus`: Optional focus area (e.g. "treatment efficacy", "safety")

2. **Present the synthesis** with:
   - Overall evidence quality assessment
   - Consistent findings across studies
   - Conflicting evidence and possible explanations
   - Clinical implications
   - Evidence gaps and future research directions
   - GRADE-style confidence rating
