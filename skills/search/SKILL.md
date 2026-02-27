---
description: Search PubMed for biomedical literature using PICO methodology
globs:
alwaysApply: false
---

# PubMed Search Skill

When the user asks to search for medical/biomedical literature, clinical evidence, or PubMed articles, use the `enhanced_pubmed_search` MCP tool.

## When to activate
- User asks about clinical evidence, medical research, or scientific literature
- User mentions PubMed, MEDLINE, or biomedical databases
- User asks "what does the evidence say about..." or "find studies on..."

## How to use

1. **Parse the query using PICO framework** when applicable:
   - **P**opulation: Who are the patients/subjects?
   - **I**ntervention: What treatment/exposure?
   - **C**omparison: Compared to what?
   - **O**utcome: What is being measured?

2. Call `enhanced_pubmed_search` with:
   - `query`: The search terms (use MeSH terms when possible)
   - `max_results`: Default 10, increase for comprehensive reviews
   - `sort_by`: "relevance" or "date"
   - `date_range`: Optional, e.g. "5y" for last 5 years

3. **Present results** with:
   - Study design and evidence level
   - Key findings and sample sizes
   - Relevance to the user's question
   - Limitations and quality notes
